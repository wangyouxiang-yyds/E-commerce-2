from django.db import models
# 刪除資料連同圖片
from django.db.models.signals import pre_delete
from django.dispatch import receiver
# Create your models here.


class BannerModel(models.Model):
    banner = models.ImageField(upload_to='banner', max_length=255, verbose_name='首頁banner圖')
    c_date = models.DateField("創立日期", auto_now=True)

    class Meta:
        db_table = 'banner'
        verbose_name_plural = '首頁Banner'
        verbose_name = '首頁Banner'





# ------------------------------------------ 刪除照片 ------------------------------------------
@receiver(pre_delete, sender=BannerModel)
def file_delete(sender, instance, **kwargs):
    instance.banner.delete(True)