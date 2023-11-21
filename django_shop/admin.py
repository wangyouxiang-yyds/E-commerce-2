from django.contrib import admin
from .models import *
# Register your models here.

class BannerAdmin(admin.ModelAdmin):
    list_display = ['banner', 'c_date']



admin.site.register(BannerModel,  BannerAdmin)
