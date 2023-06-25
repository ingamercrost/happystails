# Generated by Django 3.1.2 on 2023-06-19 17:51

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pedidos', '0004_auto_20230611_1938'),
    ]

    operations = [
        migrations.CreateModel(
            name='TipoSeguimiento',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('seguimiento', models.CharField(max_length=50)),
            ],
        ),
        migrations.AlterField(
            model_name='lineapedido',
            name='create_at',
            field=models.DateTimeField(default=datetime.datetime.now),
        ),
        migrations.AlterField(
            model_name='pedido',
            name='create_at',
            field=models.DateTimeField(default=datetime.datetime.now),
        ),
    ]
