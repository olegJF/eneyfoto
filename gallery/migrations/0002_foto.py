# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('gallery', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Foto',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=100, verbose_name=b'\xd0\x9d\xd0\xb0\xd0\xb7\xd0\xb2\xd0\xb0\xd0\xbd\xd0\xb8\xd0\xb5 \xd1\x84\xd0\xbe\xd1\x82\xd0\xbe')),
                ('image', models.ImageField(upload_to=b'photos/', blank=True)),
            ],
            options={
                'ordering': ['title'],
                'verbose_name': 'X\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f',
                'verbose_name_plural': 'x\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0438',
            },
        ),
    ]
