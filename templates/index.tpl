{% extends 'base.html' %}
{%load staticfiles%}

{% block title %}Главная{% endblock %}
{% block select %}class="selected"{% endblock select %}
{% block body %}<body class="home">{% endblock %}

{% block show_pic %}

    <div id="top-body" >
      <div id="images" class="theme-default">
        <ul id="slider">
          <li><img src="{% static "images/placeholders/1.jpg" %}" alt="" /></li>
          <li><img src="{% static "images/placeholders/2.jpg" %}" alt="" /></li>
          <li><img src="{% static "images/placeholders/3.jpg" %}" alt="" /></li>
		  <li><img src="{% static "images/placeholders/4.jpg" %}" alt="" /></li>
		  <li><img src="{% static "images/placeholders/5.jpg" %}" alt="" /></li>
        </ul>
      </div>
    </div>
{% endblock %}
{% block content%}
<div id="bottom-content">
    <div id="articles">
      <div id="article1" class="grid_4 alpha">

	    <h2 class="dotted grey-shadow"><span>{{ news1_title }}</span></h2>

        <div class="clear"></div>
        <p> {{  news1_content}}</p><br />
{#        <a href="#" style="margin:0px auto;display:block;width:231px;"><img src="images/download.png" alt="" /></a> #}
      </div>
      <div id="article2" class="grid_4 ">
        <h2 class="dotted grey-shadow"><span>{{ news2_title }}</span></h2>
        <div class="clear"></div>
        <p>{{  news2_content}}</p> <br />

      </div>
      <div id="article3" class="grid_4 omega">
        <h2 class="dotted grey-shadow"><span>{{ news3_title }}</span></h2>
        <div class="clear"></div>
        <p>{{  news3_content}}</p>
      </div>
    </div>
    <div class="clear"></div>
  </div>
{% endblock %}

{% block info %}
<div id="info">

  <div class="container_12">

  </div>
</div>
{% endblock %}