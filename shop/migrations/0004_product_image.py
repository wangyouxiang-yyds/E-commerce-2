# Generated by Django 4.2.4 on 2023-11-05 23:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("shop", "0003_product_is_onsale_alter_product_available"),
    ]

    operations = [
        migrations.AddField(
            model_name="product",
            name="image",
            field=models.URLField(null=True),
        ),
    ]
