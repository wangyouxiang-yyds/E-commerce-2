from django.contrib import admin
from .models import *

# Register your models here.
class faqAdmin(admin.ModelAdmin):
    list_display = ['order_status', 'shipping_delivery', 'payment', 'return_exchange', 'privacy_policy']


admin.site.register(FAQModels, faqAdmin)
