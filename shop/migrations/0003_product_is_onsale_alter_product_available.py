# Generated by Django 4.2.4 on 2023-11-05 11:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("shop", "0002_alter_product_options_alter_productphoto_options_and_more"),
    ]

    operations = [
        migrations.AddField(
            model_name="product",
            name="is_onsale",
            field=models.BooleanField(default=1, verbose_name="特價"),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name="product",
            name="available",
            field=models.BooleanField(verbose_name="上架"),
        ),
    ]
