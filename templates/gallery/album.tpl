{% extends "base.html" %}
{%load staticfiles%}

{% block title %}{{object.title}}{% endblock %}

{% block body %}<body>{% endblock body %}
{% block select_gal %}class="selected"{% endblock select_gal %}
{% block top-body %}
<div id="top-body" >
      <h1 class="shadow">&nbsp;</h1>
    </div>
{% endblock %}

{% block show_pic %}
{% endblock %}

{% block content %}
<div id="gallery" class="container_12">
<h2 class="dotted grey-shadow "><span>{{ object.title }}</span></h2>
{% if object.description %}

<h3>{{ object.description }}</h3><br>

{% endif %}
<p><a href="{% url 'gallery' page_number %}">&laquo; Назад в галлерею</a></p><br>
<div id="imgGallery">

    {% for photo in object.photo_set.all %}
      <div class="dirImgList"style="text-align: left !important;">
         <div>
            <div class="dirImgWrapper">
                <a href="{{photo.image.url}}" rel="lightgallery[gallery]" title="{{ photo.title }}">
                    <img src="{{ photo.image.thumb_url }}" alt=" " /><br>
                </a>
            </div>
             <div style="background-color: #fff; height: 30px; margin-top: 2px; padding: 5px">
               <div class="fb-like"  data-href="{{photo.image.url}}" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
             </div>
         </div>
      </div>
    {%empty%}
        <div class="dirImgList">
           <div>
              <div class="dirImgWrapper">
                  <img src=" {% static "photos/no_img.jpg"%}"  />
              </div>
           </div>
        </div>
    {% endfor %}

</div>
<div style="clear:both"></div>
<br>


<p><a href="{% url 'gallery' page_number %}">&laquo; Назад в галлерею</a></p><br>
<div id="Paginator">
    <ul class="paginator">


    </ul>
</div>
    </div>
{% endblock %}
{{ photo.get_absolute_url }}

{% block info %}
    <div id="info">
        <div class="container_12">

        </div>
    </div>
{% endblock %}
