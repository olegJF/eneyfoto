# -*- coding: utf-8 -*-

from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.flatpages.models import FlatPage
from django.views.generic.edit import FormView
from django.shortcuts import render, redirect, get_object_or_404
from django.core.exceptions import ObjectDoesNotExist
from gallery.forms import AlbumForm, PhotoForm, FlatPageForm
from gallery.models import Album, Photo
from django.core.paginator import Paginator, InvalidPage
from django.contrib.messages.views import SuccessMessageMixin


# from django.http import HttpResponse, request


@login_required(login_url='/login/')
def choice(request):
    return render(request, 'gallery/choice_to_do.tpl')


# edit\delete album
@login_required(login_url='/login/')
def add_album(request):
    form = AlbumForm(request.POST or None)
    context = {
        "form": form
    }
    if request.method == 'POST' and form.is_valid():
        instance = form.save(commit=False)

        # title = form.cleaned_data.get('title', None)
        # description = form.cleaned_data("description")
        # instance, created = Album.objects.get_or_create(title=title, description=description)
        # print(title)
        instance.save()
        messages.success(request, 'Альбом создан')
        return redirect('choice_album')
    else:
        messages.success(request, 'Альбом не создан')

    return render(request, 'gallery/add_album.tpl', context)


@login_required(login_url='/login/')
def edit_album_choice(request):
    all_albums = Album.objects.all()
    return render(request, 'gallery/choice_album.tpl', {'item_list': all_albums})


@login_required(login_url='/login/')
def edit_album(request, album_id):
    item = get_object_or_404(Album, id=album_id)
    form = AlbumForm(request.POST or None, instance=item)
    context = {'item': item, 'form': form, }
    if request.method == 'POST' and form.is_valid():
        form.save()
        messages.success(request, 'Отредактировано!')
        return redirect('choice_album')
    return render(request, 'gallery/edit_album.tpl', context)


@login_required(login_url='/login/')
def delete_album(request, album_id):
    item = get_object_or_404(Album, id=album_id)
    item.delete()
    messages.success(request, 'Альбом был успешно удален!')
    return redirect('choice_album')


# edit\delete photo
@login_required(login_url='/login/')
def add_photo(request):
    if request.method == "POST":
        form = PhotoForm(request.POST, request.FILES)
        if form.is_valid():
            instance = form.save(commit=False)
            instance.save()
            messages.success(request, 'Фотография добавлена')
            return redirect('choice')
        else:
            messages.success(request, 'Фотография не добавлена')
    else:
        form = PhotoForm()
        context = {
            "form": form
        }
    return render(request, 'gallery/add_photo.tpl', context)


class FileUploadView(SuccessMessageMixin, FormView):
    form_class = PhotoForm
    template_name = 'gallery/add_photo.tpl'  
    success_url = '/gallery/choice/'  # Replace with your URL or reverse().

    def post(self, request, *args, **kwargs):
        form_class = self.get_form_class()
        form = self.get_form(form_class)
        files = request.FILES.getlist('file_field')
        if form.is_valid():
            album_id = request.POST['item']
            if request.POST['title']:
                title = request.POST['title']
            else: title =''
            if request.POST['caption']:
                caption = request.POST['caption']
            else: caption = ''
            for f in files:
                one_image = Photo(item_id=album_id, image=f,
                                  title=title, caption=caption)
                one_image.save()
            if len(files) >1:
                success_message =  'Фотографии добавлены'
            else: success_message = 'Фотография добавлена'
            return self.form_valid(form)
        else:
            return self.form_invalid(form)


@login_required(login_url='/login/')
def choice_photo(request):
    all_albums = Album.objects.all()
    return render(request, 'gallery/choice_photo.tpl', {'item_list': all_albums})


@login_required(login_url='/login/')
def delete_photo(request, photo_id):
    item = get_object_or_404(Photo, id=photo_id)
    item.delete()
    messages.success(request, 'Фотография успешна удалена!')
    return redirect('choice_photo')


@login_required(login_url='/login/')
def edit_photo(request, photo_id):
    photo = get_object_or_404(Photo, id=photo_id)
    form = PhotoForm(request.POST or None, instance=photo)
    context = {
        'form': form,
        'photo': photo,
    }
    if request.method == 'POST' and form.is_valid():
        form.save()
        messages.success(request, 'Отредактировано!')
        return redirect('choice_photo')
    return render(request, 'gallery/edit_photo.tpl', context)


# edit\delete flatpage
@login_required(login_url='/login/')
def choice_fp(request):
    all_pages = FlatPage.objects.all()
    print('all_pages', all_pages)
    return render(request, 'gallery/choice_fp.tpl', {'item_list': all_pages})


@login_required(login_url='/login/')
def edit_fp(request, fp_id):
    page = get_object_or_404(FlatPage, pk=fp_id)
    form = FlatPageForm(request.POST or None, instance=page)
    context = {'items': page, 'form': form, }
    if request.method == 'POST' and form.is_valid():
        form.save()
        messages.success(request, 'Отредактировано!')
        return redirect('choice_fp')
    return render(request, 'gallery/edit_fp.tpl', context)


def gallery(request, page_number=1):
    all_albums = Album.objects.all()
    current_page = Paginator(all_albums, 16)
    try:
        item_list = current_page.page(page_number)
    except InvalidPage:
        return redirect('/gallery/1/', page_number=1)

    return render(request, 'gallery/index.tpl', {'item_list': item_list, 'page_number': page_number})


def album(request, object_id, page_number=1):
    try:
        photos_list = Album.objects.get(pk=object_id)

    except IndentationError:
        photos_list = Album.objects.get(pk=1)
    except ObjectDoesNotExist:
        photos_list = Album.objects.get(pk=1)

    count = photos_list.photo_set.count()
    context = dict()
    context['object'] = photos_list
    photos_rows = []
    more_one_line = False
    # photo_last_line = False
    # photo_in_last_line = []
    photo_in_row = 3
    if count > photo_in_row:
        cnt = count / photo_in_row
        more_one_line = True
        for i in range(1, cnt + 1):
            photos_rows.append(i * photo_in_row)
            # if count%photo_in_row:
            #   photo_last_line=True
            #   for i in range(cnt*photo_in_row, count):
            #       photo_in_last_line.append(i+1)
    context['photos_rows'] = photos_rows
    context['more_one_line'] = more_one_line
    context['page_number'] = page_number
    # context['photo_last_line'] = photo_last_line
    # context['photo_in_last_line'] = photo_in_last_line
    return render(request, 'gallery/album.tpl', context)
