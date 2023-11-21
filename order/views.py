from django.shortcuts import render, redirect
from .models import *
from member.models import memberModels


# Create your views here.

# 取的購物車內容

def my_order(request):

    user_id = request.session.get('user_id')  # 從session中獲取用戶的ID
    user = memberModels.objects.get(id=user_id)
    orders = Order.objects.filter(user=user)

    # 版頭購物車資訊
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
    return render(request, 'order.html', locals())





