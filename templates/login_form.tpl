{% extends 'base.html' %}
{%load staticfiles%}
{% block title %}{{ title }}
{% endblock %}



{% block body %}<body class="home">{% endblock %}

{% block select_in %}class="selected"{% endblock select_in %}

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
{% endblock show_pic%}

{% block content%}

  <div id="bottom-content" class="container_12">
      <h2 class="dotted grey-shadow "><span>{{ title }}</span></h2>
         <div id="articles">
             <div class="container_12">
                <form method="POST" action="" enctype="multipart/form-data">{% csrf_token %}
                    {{ form.as_p }}
                    <input type="submit" class="btn btn-default" value="{{ title }}"/>

                </form>
             </div>


          </div>
  </div>
{% endblock content%}

{% block info %}
<div id="info">

  <div class="container_12">


  </div>
</div>
{% endblock %}