# Generated by Django 3.1.2 on 2023-06-11 19:25

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0002_solicitud_fecha'),
    ]

    operations = [
        migrations.AddField(
            model_name='solicitud',
            name='aceptado',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='solicitud',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime.now),
        ),
    ]
