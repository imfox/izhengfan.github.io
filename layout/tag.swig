{% set page_title = "标签 - " + config.title %}

{% extends 'default.swig' %}

{% block content %}

<p style="margin-top:1.2em;margin-bottom:0;"><b>标签</b> | 按<a href="{{ config.root }}">文章</a>浏览<a href="/atom.xml"></a></p>
<hr>
<p>{% for tag in site.tags %}<a href="#{{ tag | first }}">{{ tag | first }}</a>, {% endfor %}</p>



{% for tag in site.tags %}
<div>
<h3 id="{{ tag.name }}" class="fox-h3">{{ tag.name }}</h3>
<table>
{% for post in site.posts.sort('-date') %} {% set match_tag = false %}
    {% for post_tag in post.tags %} {% if post_tag.name == tag.name %} {% set match_tag = true %} {% endif %} {% endfor %}
        {% if match_tag && post.path %}
        <tr class="blog-table">
        <td>{{ post.date | date("Y-m-d") }}</td>
        <td {% if post.layout === 'life' %}class="alt-body"{% endif %}>
            <a class="post-list-item" href="{{ url_for(post.path) }}">{{ post.title | escape }}</a>
        </td>
        </tr>
        {% endif %}
    {% endfor %}
</table>
</div>
{% endfor %}

{% endblock %}
