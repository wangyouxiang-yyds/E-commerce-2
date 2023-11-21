from django.shortcuts import render, redirect

from work import settings
from django.core.mail import send_mail
from .models import *
from django.http import HttpResponseRedirect, HttpResponse
import hashlib, random, string
from cart.cart import Cart

from django.contrib.auth.hashers import make_password


# Create your views here.
def singnin(request):
    msg = ""
    if "email" in request.POST:
        username = request.POST['name']
        email = request.POST['email']
        password = request.POST['password']
        birthday = request.POST['birthday']
        address = request.POST['address']
        mobile = request.POST['mobile']

        # 密碼加密
        password = hashlib.sha3_256(password.encode('utf-8')).hexdigest()
        obj = memberModels.objects.filter(email=email).count()

        if obj == 0:
            memberModels.objects.create(username=username,
                                        password=password,
                                        email=email,
                                        birthday=birthday,
                                        address=address,
                                        mobile=mobile)
            msg = "註冊成功!"
        else:
            msg = "此帳號已被使用!"
    return render(request, 'signin.html', locals())


def login(request):
    msg = ""

    if "email" in request.POST:
        email = request.POST['email']
        password = request.POST['password']

        sha_password = hashlib.sha3_256(password.encode('utf-8')).hexdigest()

        obj = memberModels.objects.filter(email=email, password=sha_password).first()

        if obj:
            request.session['user_id'] = obj.id
            request.session['userEmail'] = email
            request.session['isAlive'] = True
            request.session['Alan'] = 'Alan'

            response = HttpResponseRedirect('/')
            response.set_cookie('userEmail', email, max_age=1200)

            return response
        else:
            msg = "帳號或密碼錯誤"
            return render(request, 'login.html', locals())
    else:
        return render(request, 'login.html', locals())


def logout(request):

    request.session.clear()
    response = HttpResponseRedirect('/')
    response.delete_cookie('userEmail')
    return response


def forget_password(request):
    if 'email' in request.POST:
        mail = request.POST['email']
        count = memberModels.objects.filter(email=mail).count()
        if count > 0:
            rand_password = ''.join(random.sample(string.ascii_letters + string.digits, 8))

            password = hashlib.sha3_256(rand_password.encode('utf-8')).hexdigest()
            memberModels.objects.filter(email=mail).update(password=password)

            subject = "密碼重設信件告知"
            message = "您的電子信箱" + mail + "密碼已經被更換成" + rand_password
            sender = settings.EMAIL_HOST_USER
            recipient = [mail]
            send_mail(
                subject,
                message,
                sender,
                recipient
            )

        else:
            response = HttpResponseRedirect('/')
            return response

    return render(request, 'forget-password.html', locals())


def show_profile(request):
    if 'Alan' in request.session and 'userEmail' in request.session:
        target_email = request.session['userEmail']
        member = memberModels.objects.get(email=target_email)
        member_name = member.username
        member_email = member.email
        member_phone = member.mobile
        member_address = member.address
        member_birthday = member.birthday
        member_img = member.user_img
        member_create_date = member.c_date

    else:
        redirect('/login')

    # 版頭購物車資訊
    if 'cartlist' in request.session:
        cartlist = request.session['cartlist']

        goodslist = cartlist
        total = 0
        for unit in cartlist:
            total += int(unit[3])

        if total >= 10000:
            grandtotal = total
        else:
            grandtotal = total + 200
        if len(goodslist) == 0:
            empty = 1
        else:
            empty = 0


    return render(request, 'profile-details.html', locals())


def edit_profile(request):
    target_email = request.session['userEmail']
    member = memberModels.objects.get(email=target_email)
    member_name = member.username
    member_email = member.email
    member_password = member.password
    member_phone = member.mobile
    member_address = member.address
    member_birthday = member.birthday
    member_img = member.user_img
    member_create_date = member.c_date

    if request.method == "POST":
        member_name = request.POST.get('member_name')
        member_phone = request.POST.get('member_phone')
        member_birthday = request.POST.get('member_birthday')
        member_address = request.POST.get('member_address')
        member_password_change = request.POST.get('member_password')
        member_img_change = request.FILES.get('user_img')

        member_change = memberModels.objects.get(email=target_email)
        member_change.username = member_name
        member_change.mobile = member_phone
        member_change.address = member_address
        member_change.birthday = member_birthday
        member_change.username = member_name
        # 如果照片變換了 才會被寫資料庫
        if member_img_change and member_img != member_img_change:
            member_change.user_img = member_img_change

        # 如果密碼變換了 才會被寫資料庫
        if member_password != member_password_change:
            password = hashlib.sha3_256(member_password_change.encode('utf-8')).hexdigest()
            member_change.password = password

        member_change.save()

        return redirect('/profile-details/')

    # 版頭購物車資訊
    if 'cartlist' in request.session:
        cartlist = request.session['cartlist']

        goodslist = cartlist
        total = 0
        for unit in cartlist:
            total += int(unit[3])

        if total >= 10000:
            grandtotal = total
        else:
            grandtotal = total + 200
        if len(goodslist) == 0:
            empty = 1
        else:
            empty = 0

    return render(request, 'edit_profile.html', locals())
