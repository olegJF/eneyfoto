# -*- coding: utf-8 -*-
from django.conf.urls import url

from . import views

urlpatterns = [

    url(r'^(?P<page_number>\d+)/$', views.gallery, name='gallery'),
    url(r'^$', views.gallery, name='gallery'),
    url(r'^(?P<page_number>\d+)/album/(?P<object_id>\d+)/$', views.album, name='album'),

]

