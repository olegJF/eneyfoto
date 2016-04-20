{% extends 'base.html' %}
{%load staticfiles%}

{% block title %}Главная{% endblock %}

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

	    <h2 class="dotted grey-shadow"><span>Это новость</span></h2>
        <div class="clear"></div>
        <p> Напишем тут всякое<br />
{#        <a href="#" style="margin:0px auto;display:block;width:231px;"><img src="images/download.png" alt="" /></a> #}
      </div>
      <div id="article2" class="grid_4 ">
        <h2 class="dotted grey-shadow"><span>Ай Петри</span></h2>
        <div class="clear"></div>
        <p>На Ай-Петри наблюдается максимальное количество туманных дней в Крыму (в 1970 году — 215 дней).
		Максимальная сумма осадков на Ай-Петри (и в Крыму) — 1718 мм — отмечена в 1981 году.
		Ай-Петри — самая ветреная точка Крыма — (в 1949 году ветер со скоростью свыше 15 м/с дул здесь в течение 125 дней).
		Ай-Петри зарегистрирована и наивысшая скорость ветра — 50 м/с.
		На плато есть ветроэлектростанция, однако из-за сильного ветра были сорваны лопасти и сейчас она в нерабочем состоянии.
		Также на плато, на Перепелиной горе (Бедене-Кыр — 1320 м), в советские времена был сооружён комплекс радарных станций слежения за воздушным и космическим пространством.</p>
        <br />
        <ul class="listed-items">
          <li>Описание</li>
          <li>Климат</li>
          <li>Галерея</li>
          <li>Примечания</li>
          <li>Ссылки</li>

        </ul>
      </div>
      <div id="article3" class="grid_4 omega">
        <h2 class="dotted grey-shadow"><span>Карпаты</span></h2>
        <div class="clear"></div>
        <p>Карпа́ты (укр. Карпати, нем. Karpaten, словацк. Karpaty, венг. Kárpátok, рум. Carpaţi, серб. Карпати) — горная система в Центральной Европе, на территории Чехии, Словакии, Украины, Венгрии, Польши, Румынии, Сербии и частично Австрии (Хундсхаймер-Берге у Хайнбурга-на-Дунае и Нидеростеррайхише Инзельбергшвелле у Мистельбаха).
          Согласно римским хроникам I века н. э., в данной местности жило дакийское племя карпов. Историки и лингвисты затрудняются дать ответ на вопрос: племя названо по горам, или наоборот. По наиболее распространённой гипотезе название Карпаты — производное от пра-и.е. *sker-/*ker- «горная каменистая местность, скалы». Из современных языков ближайший эквивалент содержится в армянском: «քարպատ» или «կարպատ» (qarpat, karpat), где «qar» это камень, а «pat» это стена, а также в албанском языке: karpë «гора, камень».</p>
        <br />
        <h3>Состав Карпат</h3>
        <p>Карпаты включают (нумерация соответствует изображению):</p>
      </div>
    </div>
    <div class="clear"></div>
  </div>
{% endblock %}

{% block info %}
<div id="info">

  <div class="container_12">
    <div id="recent-posts" class="grid_8 alpha">
      <h2 class="grey-shadow">Recent Posts</h2>
      <div id="blog">
        <div class="recent-post">
          <h3><a href="#">Sample H3 heading</a></h3>
          <p> "Don't be afraid now," said he, grinning again, "Queequeg here wouldn't harm a hair of your head." "Stop your grinning," shouted I, "and why didn't you tell me that that infernal harpooneer </p>
          <div class="clear"></div>
          <img src="{% static "images/speech-bubble.png"%}" alt="" class="bubble left" /><a href="#" class="left">21 Comments</a>
          <div class="date">
            <p>&nbsp;17 July 2011</p>
          </div>
        </div>
        <div class="recent-post">
          <h3><a href="#">Sample H3 heading</a></h3>
          <p> "Don't be afraid now," said he, grinning again, "Queequeg here wouldn't harm a hair of your head." "Stop your grinning," shouted I, "and why didn't you tell me that that infernal harpooneer </p>
          <div class="clear"></div>
          <img src="{% static "images/speech-bubble.png"%}" alt="" class="bubble left" /><a href="#" class="left">21 Comments</a>
          <div class="date">
            <p>&nbsp;17 July 2011</p>
          </div>
        </div>
      </div>
    </div>
    <div id="contactUs" class="grid_4 omega">
      <div id="internet" class="grey-shadow">
        <h2>Я в сети интернет</h2>
        <ul>
          <li> <a href="#"> <img src="{% static "images/icons/32/facebook.png"%}" alt="" /> </a> </li>
{#          <li> <a href="#"> <img src="images/icons/32/linkedin.png" alt="" /> </a> </li>#}
{#          <li> <a href="#"> <img src="images/icons/32/twitter.png" alt="" /> </a> </li>#}
{#          <li> <a href="#"> <img src="images/icons/32/rss.png" alt="" /> </a> </li>#}
{#          <li> <a href="#"> <img src="images/icons/32/flickr.png" alt="" /> </a> </li>#}
{#          <li> <a href="#"> <img src="images/icons/32/delicious.png" alt="" /> </a> </li>#}
        </ul>
      </div>
      <h2 class="grey-shadow">Контакт</h2>
          <div id="message" style="display:none;"></div>
          <div class="clear"></div>
        <!--
          <form action="#" id="quick-contact">
            <label for="user-email" class="left " > Email Address:</label>
            <input type="text" name="user-email" id="user-email" value="" maxlength="40" class="right email required"/>
            <div class="clear"></div>
            <label for="user-message" class="left">Message:</label>
            <textarea cols="" rows="3" id="user-message" name="user-message" class="right required"></textarea>
            <div class="clear"></div>
            <input type="submit" class="quick-submit shadow right" style="" value="Send message"/>
          </form>
          -->
    </div>
  </div>
</div>
{% endblock %}