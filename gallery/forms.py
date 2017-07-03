# -*- coding: utf-8 -*-

from django import forms
from django.contrib.flatpages.models import FlatPage
from gallery.models import Album, Photo


class AlbumForm(forms.ModelForm):
    class Meta:
        model = Album
        fields = ['title', 'description']


class PhotoForm(forms.ModelForm):
    file_field = forms.FileField(label='Фото', widget=forms.ClearableFileInput(attrs={'multiple': True}))    

    class Meta:
        model = Photo
        fields = ['item', 'title', 'caption']


class FlatPageForm(forms.ModelForm):
    class Meta:
        model = FlatPage
        fields = ['title', 'content']

