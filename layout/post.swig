{% extends 'default.swig' %}

{% block content %}
<header>
<h2>{{ page.title }}</h2>
<p><i>{{ page.date | date("Y-m-d H:m") }}</i>{% if page.author %} • {{ page.author }}{% endif %}{% if page.meta %} • {{ page.meta }}{% endif %}</p>
</header>
<article>
{{ page.content }}
</article>
<div id="info-bottom">
<hr>
<p>Tags: {% for tag in post.tags %}<block class="tag"><a href="/archive/#{{tag}}">{{ tag }}</a></block>{% endfor %}</p>
<p><b>Comment</b> by <a href="#"> Github Issues </a></p>
<p><b>Chat</b> in <a href="#">Gitter/fan-farm</a> </p>
</div>
{% endblock %}
