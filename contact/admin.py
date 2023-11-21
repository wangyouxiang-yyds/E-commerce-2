from django.contrib import admin
from .models import *
# Register your models here.




class ContactAdmin(admin.ModelAdmin):

    list_display = ['name', 'email', 'subject', 'modify_date', 'create_date']




admin.site.register(ContactModels, ContactAdmin)

