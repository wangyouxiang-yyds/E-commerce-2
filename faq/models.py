from django.db import models


# Create your models here.

class FAQModels(models.Model):
    order_status = models.TextField(verbose_name="訂單問題", blank=True)
    shipping_delivery = models.TextField(verbose_name="運送問題", blank=True)
    payment = models.TextField(verbose_name="付款方式", blank=True)
    return_exchange = models.TextField(verbose_name="退款與換貨", blank=True)
    privacy_policy = models.TextField(verbose_name="隱私權政策", blank=True)

    class Meta:
        db_table = 'faq'
        verbose_name = '常見問題'
        verbose_name_plural = '常見問題'
