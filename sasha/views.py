# -*- coding: utf-8 -*-
from django.shortcuts import render
from django.contrib.flatpages.models import FlatPage



def index(request):
    return render(request, 'index.tpl')

def contact(request):
    flatpage = FlatPage.objects.get(url='/contact/')
    context = {
        'title': flatpage.title,
        'content': flatpage.content
    }
    return render(request, 'contact.tpl', context)
