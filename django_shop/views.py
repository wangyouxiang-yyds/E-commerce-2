from django.shortcuts import render, redirect
from shop.models import Category, Product
from .models import *
from shop.views import cart
# Create your views here.

def homepage(request):

    category = Category.objects.all().order_by('-pk')
    product_item = Product.objects.all().order_by('?')[:3]

    banner = BannerModel.objects.all()
    all_categories = Category.objects.all()

    # 版頭購物車資訊
    if 'cartlist'in request.session:
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


    return render(request, 'index.html', locals())

