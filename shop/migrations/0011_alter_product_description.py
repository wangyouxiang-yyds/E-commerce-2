# Generated by Django 4.2.4 on 2023-11-17 16:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("shop", "0010_order_orderitem"),
    ]

    operations = [
        migrations.AlterField(
            model_name="product",
            name="description",
            field=models.TextField(blank=True, verbose_name="產品描述"),
        ),
    ]