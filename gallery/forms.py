# -*- coding: utf-8 -*-

from django.forms import ModelForm
from gallery.models import Album, Photo


class AlbumForm(ModelForm):
    class Meta:
        model = Album
        fields = ['title', 'description']

class PhotoForm(ModelForm):
    class Meta:
        model = Photo
        fields = ['item', 'title', 'image', 'caption']