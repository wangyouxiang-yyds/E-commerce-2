from django.db import models
from member.models import memberModels
from shop.models import Product

# Create your models here.

class Order(models.Model):
    full_name = models.CharField(verbose_name="全名", max_length=20, null=True)
    email = models.CharField(verbose_name='訂購者信箱', max_length=50, null=True)
    phone = models.CharField(verbose_name="電話", max_length=15, null=True)
    city = models.CharField(verbose_name="城市", max_length=10, null=True)
    address = models.CharField(verbose_name="住址", max_length=20, null=True)
    zip_code = models.CharField(verbose_name="區碼", max_length=10, null=True)
    bank_account = models.CharField(verbose_name='銀行帳號', max_length=10, null=True)
    paid = models.BooleanField(verbose_name="付款狀態", default=False)
    pay_type = models.CharField(verbose_name="付款方式", max_length=10, null=True)
    subtotal = models.IntegerField(verbose_name="價格", default=0, null=True)
    shipping = models.IntegerField(verbose_name="運費", default=0, null=True)
    in_total = models.IntegerField(verbose_name="總價", default=0, null=True)
    create_date = models.DateTimeField(verbose_name="建立日期", auto_now_add=True)
    modify_date = models.DateTimeField(verbose_name="更新日期", auto_now=True)

    class Meta:
        ordering = ('-create_date', )
        db_table = 'order_category'
        verbose_name_plural = '訂單管理'
        verbose_name = '訂單管理'
    def __str__(self):
        return 'Order:{}'.format(self.id)

class OrderItem(models.Model):
    dorder = models.ForeignKey(Order, on_delete=models.CASCADE, verbose_name="訂單編號",null=True)
    product_name = models.CharField(verbose_name='產品名稱', max_length=100,null=True)
    unitprice = models.IntegerField(verbose_name='單位', default=0,null=True)
    quantity = models.IntegerField(verbose_name='數量', default=0,null=True)
    dtotal = models.IntegerField(verbose_name='總共', default=0,null=True)


    class Meta:
        verbose_name_plural = '訂單明細'
        verbose_name = '訂單明細'
        db_table = 'orderitem_detail'
    def __str__(self):
        return self.product_name
