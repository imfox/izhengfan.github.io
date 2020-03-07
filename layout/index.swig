{% extends 'default.swig' %}

{% block content %}

<p style="margin-top:1.2em;margin-bottom:0;"><b>文章</b> | 按<a href="{{ url_for(config.tag_dir) }}#tags">标签</a>浏览<a href="/atom.xml"></a></p>
<hr>

<article>
<blockquote><p>{{ description }}</p></blockquote>
</article>

<table>
{% for post in site.posts %}
{% set this_year = post.date | date("Y") %}
{% set next_year = post.prev.date | date("Y") %}

<tr class="blog-table">
<td>{{ post.date | date("Y-m-d") }}</td>
<td {% if post.layout === 'life' %}class="alt-body"{% endif %}>
    <a class="post-list-item" href="{{ url_for(post.path) }}">{{ post.title | escape }}</a>
</td>
</tr>
{% endfor %}

</table>
{% endblock %}
