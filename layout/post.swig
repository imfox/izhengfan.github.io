{% set page_title = page.title + " - " + config.title %}

{% extends 'default.swig' %}

{% block content %}
<header>
<h2>{{ page.title | escape }}</h2>
<p>
    <i>{{ page.date | date("Y-m-d H:i") }}</i>
    {% if page.author %} • {{ page.author }}{% endif %}
    {% if page.meta %} • {{ page.meta }}{% endif %}
    {% if config.source_url %} • <a href="{{ config.source_url }}{{ page.source }}" target="_blank">编辑本页</a>{% endif %}
</p>
</header>
<article>
{{ page.content }}
</article>
<div id="info-bottom">
<hr>
<p>标签: {% for tag in page.tags %}<a href="{{ url_for(config.tag_dir) }}#{{tag.name}}">{{ tag.name }}</a>, {% endfor %}</p>
{#% include '_partials/disqus.swig' %#}
</div>
{% endblock %}

{% block custom_script %}
{% include '_partials/disqus-script.swig' %}
{% endblock %}
