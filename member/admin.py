from django.contrib import admin
from .models import *


# Register your models here.


class memberAdmin(admin.ModelAdmin):
    list_display = ['username', 'email', 'birthday', 'mobile', 'address', 'c_date']

admin.site.register(memberModels, memberAdmin)
