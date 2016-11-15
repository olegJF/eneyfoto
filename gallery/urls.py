# -*- coding: utf-8 -*-
from django.conf.urls import url
from . import views

urlpatterns = [

    url(r'^(?P<page_number>\d+)/$', views.gallery, name='gallery'),
    url(r'^(?P<page_number>\d+)/album/(?P<object_id>\d+)/$', views.album, name='album'),
    url(r'^choice/$', views.choice, name='choice'),
    url(r'^add/album/$', views.add_album, name='add_album'),
    url(r'^add/photo/$', views.add_photo, name='add_photo'),
    url(r'^edit/album/(?P<album_id>\d+)/$', views.edit_album, name='edit_album'),
    url(r'^edit/album/$', views.edit_album_choice, name='choice_album'),
    url(r'^delete/album/(?P<album_id>\d+)/$', views.delete_album, name='delete_album'),
    url(r'^delete/photo/(?P<photo_id>\d+)/$', views.delete_photo, name='delete_photo'),
    url(r'^choice/photo/$', views.choice_photo, name='choice_photo'),
    url(r'^edit/photo/(?P<photo_id>\d+)/$', views.edit_photo, name='edit_photo'),
    url(r'^choice/fp/$', views.choice_fp, name='choice_fp'),
    url(r'^edit/fp/(?P<fp_id>\d+)/$', views.edit_fp, name='edit_fp'),
    url(r'^$', views.gallery, name='gallery'),


]

