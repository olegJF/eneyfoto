{% extends 'base.html' %}
{%load staticfiles%}
{% block title %}Галерея{% endblock %}

{% block body %}{% endblock %}
{% block select_choice %}class="selected"{% endblock select_choice %}
{% block top-body %}
<div id="top-body" >
      <h1 class="shadow">&nbsp;</h1>
    </div>
{% endblock %}

{% block show_pic %}
{% endblock %}

{% block content %}
<div id="gallery" class="container_12">
<h2 class="dotted grey-shadow "><span>Выберите информацию для редактирования</span></h2>
{% if messages %}
    {% for message in messages %}
        <h3{% if message.tags %} class="{{ message.tags }}"{% endif %}>{{ message }}</h3>
    {% endfor %}
{% endif %}
<p>&nbsp;</p>
{% for page in item_list %}
     <div >
        <div>
            <h3>{{ page.title }}</h3>

            <div style="display: inline">
            <a href=" {% url 'edit_fp'  page.pk %}">EDIT</a>
            <p>&nbsp;</p>
            </div>
        </div>
     <div style="clear:both"></div>
     </div>
{% endfor %}
  <div style="clear:both"></div>

</div>
<div>
    <a href="{% url 'choice'  %}"  >Назад к выбору действий</a>
</div>
{% endblock %}


{% block info %}
    <div id="info">

        <div class="container_12">


        </div>
    </div>
{% endblock %}
