from django.db import models

# 刪除資料連同圖片
from django.db.models.signals import pre_delete
from django.dispatch import receiver

# Create your models here.

class ArticleCategory(models.Model):
    article_category = models.CharField(verbose_name="文章類別", max_length=10, null=False)

    class Meta:
        db_table = 'article_category'
        verbose_name = "文章類別"
        verbose_name_plural = "文章類別"

    def __str__(self):
        return self.article_category


class Article(models.Model):
    article_category = models.ForeignKey(ArticleCategory, on_delete=models.CASCADE, verbose_name="文章類別")
    title = models.CharField(verbose_name="標題", max_length=50)
    small_content = models.TextField(verbose_name="文章大綱", blank=True)
    content = models.TextField(verbose_name="文章內容", blank=True)
    author_name = models.CharField(verbose_name="作者", max_length=50)
    modify_date = models.DateTimeField(verbose_name="修改日期", auto_now=True)

    create_date = models.DateField(verbose_name="建立日期", auto_now_add=True)
    article_photo = models.ImageField(verbose_name="文章圖片", upload_to='article_photo', max_length=200)

    class Meta:
        db_table = 'article'
        verbose_name = "文章"
        verbose_name_plural = "文章"


    def __str__(self):
        return self.title

# ------------------------------------------ 刪除照片 ------------------------------------------
@receiver(pre_delete, sender=Article)
def file_delete(sender, instance, **kwargs):
    instance.article_photo.delete(True)