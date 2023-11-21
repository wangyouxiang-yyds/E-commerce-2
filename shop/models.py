from django.db import models

# 刪除資料連同圖片
from django.db.models.signals import pre_delete
from django.dispatch import receiver

# Create your models here.
class Category(models.Model):
    category_name = models.CharField(verbose_name="類別名稱", max_length=200)
    category_photo = models.ImageField(verbose_name="類別圖片", upload_to='category_photo', max_length=200, null=True)

    class Meta:
        db_table = 'category'
        verbose_name_plural = '類別列表'
        verbose_name = '類別列表'

    def __str__(self):
        return self.category_name


class Product(models.Model):
    category = models.ForeignKey(Category, on_delete=models.CASCADE, verbose_name='類別')
    pc_id = models.CharField(verbose_name="產品編號", max_length=20)
    name = models.CharField(verbose_name="產品名稱", max_length=200)
    small_description = models.TextField(verbose_name="產品簡述", max_length=100)
    description = models.TextField(verbose_name="產品描述", blank=True)
    stock = models.PositiveIntegerField(verbose_name="庫存", default=0)
    price = models.IntegerField(verbose_name="價格")
    available = models.BooleanField(verbose_name="上架")
    modify_date = models.DateTimeField(verbose_name="修改日期", auto_now=True)
    create_date = models.DateField(verbose_name="建立日期", auto_now_add=True)
    is_onsale = models.BooleanField(verbose_name="特價")
    image = models.ImageField(verbose_name="產品圖片", upload_to='product_image', max_length=200, null=True)


    class Meta:
        db_table = 'product'
        verbose_name_plural = '產品列表'
        verbose_name = '產品列表'
    def __str__(self):
        return self.name

class ProductPhoto(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE, verbose_name="產品")
    product_photo = models.ImageField(verbose_name="文章圖片", upload_to='product_photo', max_length=200)

    class Meta:
        db_table = 'product_photo'
        verbose_name_plural = '產品圖片列表'
        verbose_name = '產品圖片列表'



class Order(models.Model):
    full_name = models.CharField(verbose_name="全名", max_length=20)
    email = models.CharField(verbose_name='訂購者信箱', max_length=50)
    phone = models.CharField(verbose_name="電話", max_length=15)
    city = models.CharField(verbose_name="城市", max_length=10)
    address = models.CharField(verbose_name="住址", max_length=20)
    zip_code = models.CharField(verbose_name="區碼", max_length=10)
    bank_account = models.CharField(verbose_name='銀行帳號', max_length=10, null=True)
    paid = models.BooleanField(verbose_name="付款狀態", default=False)
    pay_type = models.CharField(verbose_name="付款方式", max_length=10, null=True)
    subtotal = models.IntegerField(verbose_name="價格", default=0)
    shipping = models.IntegerField(verbose_name="運費", default=0)
    in_total = models.IntegerField(verbose_name="總價", default=0)
    create_date = models.DateTimeField(verbose_name="建立日期", auto_now_add=True)
    modify_date = models.DateTimeField(verbose_name="更新日期", auto_now=True)

    class Meta:
        ordering = ('-create_date', )
        db_table = 'order_class'
        verbose_name_plural = '訂單管理'
        verbose_name = '訂單管理'
    def __str__(self):
        return 'Order:{}'.format(self.id)

class OrderItem(models.Model):
    dorder = models.ForeignKey(Order, on_delete=models.CASCADE, verbose_name="訂單編號")
    product_name = models.CharField(verbose_name='產品名稱', max_length=100)
    unitprice = models.IntegerField(verbose_name='單位', default=0)
    quantity = models.IntegerField(verbose_name='數量', default=0)
    dtotal = models.IntegerField(verbose_name='總共', default=0)


    class Meta:
        verbose_name_plural = '訂單明細'
        verbose_name = '訂單明細'
        db_table = 'order_detail'
    def __str__(self):
        return self.product_name


# ------------------------------------------ 刪除照片 ------------------------------------------
@receiver(pre_delete, sender=Category)
def file_delete(sender, instance, **kwargs):
    instance.product_photo.delete(True)

@receiver(pre_delete, sender=ProductPhoto)
def file_delete(sender, instance, **kwargs):
    instance.product_photo.delete(True)