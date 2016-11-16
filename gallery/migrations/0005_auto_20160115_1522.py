# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations
import gallery.fields


class Migration(migrations.Migration):

    dependencies = [
        ('gallery', '0004_auto_20160115_1511'),
    ]

    operations = [
        migrations.AlterField(
            model_name='photo',
            name='image',
            field=gallery.fields.ThumbnailImageField(upload_to=b'photos'),
        ),
    ]
