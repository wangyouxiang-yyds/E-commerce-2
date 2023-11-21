from django.shortcuts import render, redirect
from django.urls import reverse
from django.views.decorators.csrf import csrf_exempt
from shop.models import Category
from shop.models import Order, OrderItem
from work import settings
from paypal.standard.forms import PayPalPaymentsForm


# Create your views here.

@csrf_exempt
def payment_done(request):
    orderid = request.session['orderid']
    order = Order.objects.get(id=orderid)
    order.paid = True
    return render(request, 'payment_done.html')


@csrf_exempt
def payment_canceled(request):
    return render(request, 'payment_canceled.html')

@csrf_exempt
def payment(request, orderid):
    messages = ''
    try:
        order = Order.objects.get(id=orderid)
        request.session['orderid'] = order.id
        all_order_item = OrderItem.objects.filter(dorder=order)

        items = list()
        total = 0
        for order_item in all_order_item:
            t = dict()
            t['name'] = order_item.product_name
            t['price'] = order_item.unitprice
            t['quantity'] = order_item.quantity
            t['subtotal'] = int(order_item.unitprice) * int(order_item.quantity)
            total = total +  int(order_item.unitprice) * int(order_item.quantity)
            items.append(t)
        host = request.get_host()
        paypal_dict = {
            "business": settings.PAYPAL_RECEIVER_EMAIL,
            "amount": total,
            "item_name": "Alan店商網站編號:{}".format(orderid),
            "invoice": "invoice-{}".format(orderid),
            "currency_code": 'TWD',
            "notify_url": "http://{}{}".format(host, reverse('paypal-ipn')),
            "return_url": "http://{}/done/".format(host),
            "cancel_url": "http://{}/canceled/".format(host),
        }
        paypal_form = PayPalPaymentsForm(initial=paypal_dict)
        return render(request, 'payment.html', locals())

    except:
        return redirect('/order')
