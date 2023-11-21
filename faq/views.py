from django.shortcuts import render
from .models import *
# Create your views here.


def FAQ_View(request):
    faq = FAQModels.objects.first()

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
    return render(request, 'faq.html', locals())