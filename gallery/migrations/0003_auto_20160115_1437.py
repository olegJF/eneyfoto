# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import gallery.fields


class Migration(migrations.Migration):

    dependencies = [
        ('gallery', '0002_foto'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Foto',
        ),
        migrations.AlterField(
            model_name='photo',
            name='image',
            field=gallery.fields.ThumbnailImageField(upload_to=b'photos'),
        ),
    ]
