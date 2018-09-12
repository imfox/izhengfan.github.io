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
<p>标签: {% for tag in page.tags %}<block class="izhengfan-tag"><a href="/archive/#{{tag}}">{{ tag }}</a></block>{% endfor %}</p>
{% include '_partials/disqus.swig' %}
</div>
{% endblock %}

{% block custom_script %}
{% include '_partials/disqus-script.swig' %}
{% endblock %}
