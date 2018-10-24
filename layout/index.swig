{% extends 'default.swig' %}

{% block content %}
<article>
<blockquote><p>{{ description }}</p></blockquote>
</article>

<p style="margin-top:1.2em;margin-bottom:0;"><b>文章</b> | 按<a href="{{ url_for(config.tag_dir) }}#tags">标签</a>浏览 | 订阅 <a href="/atom.xml">RSS</a></p>
<hr>
<table>
{% for post in page.posts %}
{% set this_year = post.date | date("Y") %}
{% set next_year = post.prev.date | date("Y") %}

{% if loop.first %}
<tbody>

<tr class="blog-table"><td>
<h3 id="year_{{ this_year }}">{{ this_year }}</h3>
</td></tr>
{% else %}
    {% if this_year != next_year %}
<tr class="blog-table"><td>
<h3 id="year_{{ this_year }}">{{ this_year }}</h3>
</td></tr>
    {% endif %}
{% endif %}

<tr class="blog-table">
<td>{{ post.date | date("Y-m-d") }}</td>
<td><a class="post-list-item" href="{{ url_for(post.path) }}">{{ post.title | escape }}</a></td>
</tr>
{% endfor %}

</tbody>
</table>
{% endblock %}
