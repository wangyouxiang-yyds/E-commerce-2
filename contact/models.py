from django.db import models

# Create your models here.



class ContactModels(models.Model):

    name = models.CharField(verbose_name="顧客名稱", max_length=20)
    email = models.EmailField(verbose_name="電子信箱", max_length=255)
    subject = models.CharField(verbose_name="主旨", max_length=255, null=True)
    message = models.TextField(verbose_name="內容", blank=True)
    create_date = models.DateTimeField(verbose_name="建立日期", auto_now_add=True)
    modify_date = models.DateTimeField(verbose_name="更新日期", auto_now=True)
    class Meta:
        db_table = 'contact'
        verbose_name_plural = '聯絡我們'
        verbose_name = '聯絡我們'
    def __str__(self):
        return self.name
