from django.db import models

# Create your models here.
class memberModels(models.Model):
    username = models.CharField(verbose_name='用戶名稱', max_length=50)
    email = models.EmailField(verbose_name='電子信箱', max_length=200)
    password = models.CharField(verbose_name='密碼', max_length=200)
    birthday = models.DateField(verbose_name="生日")
    mobile = models.CharField(verbose_name="行動電話", max_length=20)
    address = models.CharField(verbose_name="地址", max_length=200)
    c_date = models.DateField(verbose_name="創立日期", auto_now=True)
    user_img = models.ImageField(verbose_name="用戶大頭貼", upload_to="user_img", max_length=200, null=True)

    class Meta:
        db_table = "member"
        verbose_name_plural = '會員管理'
        verbose_name = '會員管理'

    def __str__(self):
        return self.username