from django.http import HttpResponseRedirect
from django.shortcuts import render, get_object_or_404, redirect
from .models import *

# 分頁
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
import os
# 丟過來的文字轉成html
from django.utils.html import format_html

import importlib.util

# 抓取目前預設位置
basdir = os.path.dirname(__file__)
file = os.path.join(basdir, 'ecpay_payment_sdk.py')


spec = importlib.util.spec_from_file_location(
    "ecpay_payment_sdk",
    file
)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
from datetime import datetime


cartlist = list()
customname = ''
customphone = ''
customemail = ''
customaddress = ''
customzipcode = ''
customcity = ''
orderTotal = 0
goodsTitle = list()

def cart_home(request):
    global cartlist
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


    return render(request, 'base.html', locals())


def cart(request):
    global cartlist
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
    return render(request, 'cart.html', locals())


def addtocart(request, ctype=None, productid=None): # ctype 購物車的功能模式，productid商品的pk
    global cartlist
    # 模式為增加
    if ctype == 'add':
        product = Product.objects.filter(id=productid).count()  # 資料庫搜索有無此樣商品
        if product > 0:
            product = Product.objects.get(id=productid)
            flag = True
            '''
            如果項目已存在購物車
            unit[0] = 商品名稱
            unit[1] = 商品價格
            unit[2] = 商品數量
            unit[3] = 商品總價
            unit[4] = 圖片路徑
            '''
            amount = 0
            if request.method == "POST":
                amount = request.POST.get('product-quantity')

            for unit in cartlist:  # 檢查是否已經有在裡面了
                if product.name == unit[0]:  # 如果unit[0]有相同的產品名字
                    unit[2] = str(int(unit[2]) + 1 + int(amount))  # unit[2]數量加一
                    unit[3] = str(int(unit[3]) + product.price)  # unit[3]總價加上增加一筆的價錢
                    unit[4] = str(product.image)
                    flag = False    # 此flag用來設置是否有在這裏面，此時狀態已有故為False
                    break
            if flag:                # 預設flag True, 意思為此商品沒有被加入，把需要的資訊寫進list裡面
                templist = list()
                templist.append(product.name)   # unit[0] = 商品名稱
                templist.append(str(product.price)) # unit[1] = 商品價格
                if request.method == "POST":    # 從前台階到POST的數量才數量為此狀態
                    amount = request.POST.get('product-quantity') # unit[2] = 商品數量
                    templist.append(amount)
                else:
                    templist.append('1')    # unit[2] = 商品數量
                templist.append(str(product.price)) # unit[3] = 商品總價
                templist.append(str(product.image)) # unit[4] = 圖片路徑
                cartlist.append(templist)

            request.session['cartlist'] = cartlist  # 把購物車資訊寫進session裡

            return redirect('/cart/')

        return redirect('/shop-sidebar/')
    # 模式為更新, 增加數量
    elif ctype == 'update':
        n = 0
        for unit in cartlist:
            amount = request.POST.get('qty' + str(n), 1)

            if len(amount) == 0:
                amount = '1'
            if int(amount) <= 0:  # 如果設定負數給他變成1
                amount = '1'
            unit[2] = amount  # 新增的數量變更
            unit[3] = str(int(unit[1]) * int(unit[2]))
            n += 1
        request.session['cartlist'] = cartlist
        return redirect('/cart/')
    # 模式為刪除
    elif ctype == 'delete':
        del cartlist[int(productid)]
        request.session['cartlist'] = cartlist
        return redirect('/cart/')
    # 模式為清空購物車
    elif ctype == 'empty':
        cartlist.clear()
        request.session['cartlist'] = cartlist
        return redirect('/cart/')


def cartorder(request):
    if "Alan" in request.session:

        global cartlist, customname, customphone, customemail, customaddress, customcity, customzipcode
        total = 0
        cartlist = request.session['cartlist']
        goodslist = cartlist

        for unit in cartlist:
            total += int(unit[3])
        if total >= 1000:
            shipping = 0
        else:
            shipping = 200

        grandtotal = total + shipping
        name = customname
        phone = customphone
        email = customemail
        address = customaddress

        return render(request, 'checkout.html', locals())

    else:
        return redirect('/login')

def checkoutView(request):
    if "Alan" in request.session:

        global cartlist, customname, customphone, customemail, customaddress, customcity, customzipcode, orderTotal, goodsTitle


        if 'name' in request.POST:
            total = 0

            for unit in cartlist:
                total += int(unit[3])
            if total >= 1000:
                shipping = 0
            else:
                shipping = 200

            grandtotal = total + shipping
            orderTotal = grandtotal  # 訂單的總價

            customer_name = request.POST.get('name','')
            customer_address = request.POST.get('address','')
            customer_phone = request.POST.get('phone','')
            customer_zipcode = request.POST.get('zipcode','')
            customer_city = request.POST.get('city','')
            paytype = request.POST.get('paytype')   # 付款方式
            customer_email = request.session['userEmail'] # mail抓取session

            order_db = Order.objects.create(
                full_name=customer_name,
                email=customer_email,
                phone=customer_phone,
                city=customer_city,
                address=customer_address,
                zip_code=customer_zipcode,
                pay_type=paytype,
                subtotal=total,
                shipping=shipping,
                in_total=grandtotal
            )

            for unit in cartlist:
                goodsTitle.append(unit[0])
                total = int(unit[1]) * int(unit[3])

                orderitem_db = OrderItem.objects.create(
                    dorder=order_db,
                    product_name=unit[0],
                    unitprice=unit[1],
                    quantity=unit[2],
                    dtotal=total
                )
            orderid = order_db.id
            front_name = customer_name
            front_email =  customer_email
            cartlist.clear()
            request.session['cartlist'] = cartlist

            # 選擇支付方式

            if paytype == "paypal":
                if "userEmail" in request.session:
                    email = request.session['userEmail']
                    user_order = Order.objects.filter(id=orderid).first()

                return render(request, 'confirmation.html', locals())

            elif paytype == "ecpay":
                if "userEmail" in request.session:
                    email = request.session['userEmail']
                    user_order = Order.objects.filter(id=orderid).first()

                return render(request, 'confirmation.html', locals())


            # 可新增其他付款方式
            else:
               return redirect('/order')

        else:
           return redirect('/shop-sidebar')
    else:
        return redirect('/login')


def order(request):
    if "userEmail" in request.session:
        email = request.session['userEmail']
        user_order = Order.objects.filter(email=email)

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
    return render(request, 'order.html', locals())
def order_detail(request, orderid):

    if "userEmail" in request.session:
        email = request.session['userEmail']
        user_order = Order.objects.filter(id=orderid).first()
        user_order_detail = OrderItem.objects.filter(dorder=user_order)



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
    return render(request, 'order_detail.html', locals())



# Create your views here.
def shop_view(request, selected_category=0):
    product_category = Category.objects.all()

    if selected_category:
        product_item = Product.objects.filter(category__id=selected_category)
    else:
        product_item = Product.objects.all()

    paginator = Paginator(product_item, 9)  # 9樣商品為一頁
    page = request.GET.get('page', 1)

    try:
        product_item = paginator.page(page)
    except PageNotAnInteger:
        product_item = paginator.page(1)
    except EmptyPage:
        product_item = paginator.page(paginator.num_pages)

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

    return render(request, 'shop-sidebar.html', locals())


def shop_detail_view(request, product_id):
    all_product = Product.objects.all()
    all_photo_random = Product.objects.order_by('?')[:4]
    product_content = get_object_or_404(all_product, pk=product_id)
    product = get_object_or_404(Product, pk=product_id)
    product_photos = product.productphoto_set.all()


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
    return render(request, 'product-single.html', locals())
def ECPayCredit(request):
    global goodsTitle
    title = ""
    for unit in goodsTitle:
        title += unit + "#"

    order_params = {
        'MerchantTradeNo': datetime.now().strftime("NO%Y%m%d%H%M%S"),
        'StoreID': '',
        'MerchantTradeDate': datetime.now().strftime("%Y/%m/%d %H:%M:%S"),
        'PaymentType': 'aio',
        'TotalAmount': orderTotal,
        'TradeDesc': '訂單測試 Order Test',
        'ItemName': title,
        'ReturnURL': 'https://www.youtube.com/',
        'ChoosePayment': 'Credit',
        'ClientBackURL': 'https://www.youtube.com/',
        'ItemURL': 'https://www.ecpay.com.tw/item_url.php',
        'Remark': '交易備註',
        'ChooseSubPayment': '',
        'OrderResultURL': 'https://www.youtube.com/',
        'NeedExtraPaidInfo': 'Y',
        'DeviceSource': '',
        'IgnorePayment': '',
        'PlatformID': '',
        'InvoiceMark': 'N',
        'CustomField1': '',
        'CustomField2': '',
        'CustomField3': '',
        'CustomField4': '',
        'EncryptType': 1,
    }

    extend_params_1 = {
        'BindingCard': 0,
        'MerchantMemberID': '',
    }

    extend_params_2 = {
        'Redeem': 'N',
        'UnionPay': 0,
    }

    inv_params = {
        # 'RelateNumber': 'Tea0001', # 特店自訂編號
        # 'CustomerID': 'TEA_0000001', # 客戶編號
        # 'CustomerIdentifier': '53348111', # 統一編號
        # 'CustomerName': '客戶名稱',
        # 'CustomerAddr': '客戶地址',
        # 'CustomerPhone': '0912345678', # 客戶手機號碼
        # 'CustomerEmail': 'abc@ecpay.com.tw',
        # 'ClearanceMark': '2', # 通關方式
        # 'TaxType': '1', # 課稅類別
        # 'CarruerType': '', # 載具類別
        # 'CarruerNum': '', # 載具編號
        # 'Donation': '1', # 捐贈註記
        # 'LoveCode': '168001', # 捐贈碼
        # 'Print': '1',
        # 'InvoiceItemName': '測試商品1|測試商品2',
        # 'InvoiceItemCount': '2|3',
        # 'InvoiceItemWord': '個|包',
        # 'InvoiceItemPrice': '35|10',
        # 'InvoiceItemTaxType': '1|1',
        # 'InvoiceRemark': '測試商品1的說明|測試商品2的說明',
        # 'DelayDay': '0', # 延遲天數
        # 'InvType': '07', # 字軌類別
    }

    # 建立實體
    ecpay_payment_sdk = module.ECPayPaymentSdk(
        MerchantID='2000132',
        HashKey='5294y06JbISpM5x9',
        HashIV='v77hoKGq4kWxNNIS'
    )

    # 合併延伸參數
    order_params.update(extend_params_1)
    order_params.update(extend_params_2)

    # 合併發票參數

    order_params.update(inv_params)
    try:
        # 產生綠界訂單所需參數
        final_order_params = ecpay_payment_sdk.create_order(order_params)

        # 產生 html 的 form 格式
        action_url = 'https://payment-stage.ecpay.com.tw/Cashier/AioCheckOut/V5'  # 測試環境
        # action_url = 'https://payment.ecpay.com.tw/Cashier/AioCheckOut/V5' # 正式環境
        html = ecpay_payment_sdk.gen_html_post_form(action_url, final_order_params)
        html = format_html(html)

        goodsTitle.clear()

        return render(request, 'ecpaycredit.html', locals())



    except Exception as error:
        print('An exception happened: ' + str(error))