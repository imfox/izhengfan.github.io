{% extends 'default.swig' %}

{% block content %}
<article>
<blockquote><p>{{ description }}</p></blockquote>
</article>

<p style="margin-top:1.2em;margin-bottom:0;"><b>文章</b> | 按<a href="/archive#tags">标签</a>浏览</p>
<hr>
<table>
{% autoescape true %}
{% for post in page.posts %}
<tr id="blog-table">
<td>{{ post.date | date("Y-m-d") }}</td>
<td><a class="post-list-item" href="{{ url_for(post.path) }}">{{ post.title }}</a></td>
</tr>
{% endfor %}
{% endautoescape %}
</table>
<hr>
<p>All posts <a href="/archive">archived</a></p>
{% endblock %}
