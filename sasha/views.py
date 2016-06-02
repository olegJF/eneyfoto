# -*- coding: utf-8 -*-
from django.shortcuts import render
from django.contrib.flatpages.models import FlatPage



def index(request):
    news1 = FlatPage.objects.get(url='/news1/')
    news2 = FlatPage.objects.get(url='/news2/')
    news3 = FlatPage.objects.get(url='/news3/')
    context = {
        'news1_title': news1.title,
        'news1_content': news1.content,
        'news2_title': news2.title,
        'news2_content': news2.content,
        'news3_title': news3.title,
        'news3_content': news3.content,
    }
    return render(request, 'index.tpl', context)

def contact(request):
    flatpage = FlatPage.objects.get(url='/contact/')
    context = {
        'title': flatpage.title,
        'content': flatpage.content
    }
    return render(request, 'contact.tpl', context)
