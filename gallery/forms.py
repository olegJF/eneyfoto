# -*- coding: utf-8 -*-

from django.forms import ModelForm, Form
from django.contrib.flatpages.models import FlatPage
from gallery.models import Album, Photo


class AlbumForm(ModelForm):
    class Meta:
        model = Album
        fields = ['title', 'description']


class PhotoForm(ModelForm):
    class Meta:
        model = Photo
        fields = ['item', 'title', 'image', 'caption']


class FlatPageForm(ModelForm):
    class Meta:
        model = FlatPage
        fields = ['title', 'content']

