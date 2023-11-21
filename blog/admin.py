from django.contrib import admin
from .models import *


# Register your models here.


class ArticleCategoryAdmin(admin.ModelAdmin):
    list_display = ['article_category']


admin.site.register(ArticleCategory, ArticleCategoryAdmin)


class ArticleAdmin(admin.ModelAdmin):
    list_display = ['title', 'article_category', 'author_name', 'modify_date', 'create_date']


admin.site.register(Article, ArticleAdmin)

# admin.site.site_title = '文章管理系統'
admin.site.site_header = 'Alan E-commerce後台管理系統'
admin.site.index_title = 'Alan E-commerce管理平台'