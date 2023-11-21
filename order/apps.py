from django.apps import AppConfig


class OrderConfig(AppConfig):
    default_auto_field = "django.db.models.BigAutoField"
    name = "order"
    verbose_name = '訂單列表'
    def ready(self):
        import order.signal
