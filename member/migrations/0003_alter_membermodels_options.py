# Generated by Django 4.2.4 on 2023-11-11 20:18

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("member", "0002_membermodels_user_img"),
    ]

    operations = [
        migrations.AlterModelOptions(
            name="membermodels",
            options={"verbose_name": "會員管理", "verbose_name_plural": "會員管理"},
        ),
    ]
