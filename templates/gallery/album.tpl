{% extends "base.html" %}
{%load staticfiles%}

{% block title %}{{object.title}}{% endblock %}

{% block body %}<body>{% endblock %}

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

<div id="imgGallery">
    <table class="output_photo" align="center" cellpadding="2" cellspacing="10">
        <tr>
            {% for photo in object.photo_set.all %}
            <td>
                <a href="{{photo.image.url}}" rel="lightgallery[gallery]" title="{{ photo.title }}">
                    <img src="{{ photo.image.thumb_url }}" alt=" " /><br>
                </a>
            </td>
            {% if more_one_line and forloop.counter in photos_rows%}
            </tr>
            <tr>
            {% endif %}

            {%empty%}
                <td>
                    <img src=" {% static "photos/no_img.jpg"%}"  />
                </td>
            {% endfor %}
        </tr>
    </table>
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

{% block info %}{% endblock %}
