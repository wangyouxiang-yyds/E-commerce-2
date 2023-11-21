# Generated by Django 4.2.4 on 2023-11-05 10:34

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="Category",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "category_name",
                    models.CharField(max_length=200, verbose_name="類別名稱"),
                ),
            ],
            options={
                "verbose_name_plural": "類別列表",
                "db_table": "category",
            },
        ),
        migrations.CreateModel(
            name="Product",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("pc_id", models.CharField(max_length=20, verbose_name="產品編號")),
                ("name", models.CharField(max_length=200, verbose_name="產品名稱")),
                (
                    "small_description",
                    models.TextField(max_length=100, verbose_name="產品簡述"),
                ),
                ("description", models.TextField(max_length=200, verbose_name="產品描述")),
                ("stock", models.PositiveIntegerField(default=0, verbose_name="庫存")),
                ("price", models.IntegerField(verbose_name="價格")),
                ("available", models.BooleanField(verbose_name="上架")),
                (
                    "modify_date",
                    models.DateTimeField(auto_now=True, verbose_name="修改日期"),
                ),
                (
                    "create_date",
                    models.DateField(auto_now_add=True, verbose_name="建立日期"),
                ),
                (
                    "category",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="shop.category",
                        verbose_name="類別",
                    ),
                ),
            ],
            options={
                "db_table": "product",
            },
        ),
        migrations.CreateModel(
            name="ProductPhoto",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "product_photo",
                    models.ImageField(
                        max_length=200, upload_to="product_photo", verbose_name="文章圖片"
                    ),
                ),
                (
                    "product",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="shop.product",
                        verbose_name="產品",
                    ),
                ),
            ],
            options={
                "db_table": "product_photo",
            },
        ),
    ]