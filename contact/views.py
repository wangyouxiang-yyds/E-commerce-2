from django.shortcuts import render
from .models import *
from django.core.mail import EmailMessage
# Create your views here.

def contactView(request):
    if "name" in request.POST:
        name = request.POST['name']
        email = request.POST['email']
        subject = request.POST['subject']
        message = request.POST['message']

        obj = ContactModels.objects.create(name=name,
                                           email=email,
                                           subject=subject,
                                           message=message
                                           )

        mail_body = u'''名字:{}
        信箱:{}
        主旨:{}
        反應的內容:{}'''.format(name, email, subject, message)

        email = EmailMessage('來自' + name + '的意見', mail_body, email, ['tree8454@gmail.com'])
        email.send()
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
    return render(request, 'contact.html', locals())