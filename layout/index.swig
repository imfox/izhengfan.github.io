{% extends 'default.swig' %}

{% block content %}
<article>
<blockquote><p>{{ site.description }}</p></blockquote>
</article>

<p style="margin-top:1.2em;margin-bottom:0;"><b>Blogs</b> | Browse by <a href="/archive#tags">Tags</a></p>
<hr>
<table>
{% for post in page.posts %}
<tr id="blog-table">
<td>{{ post.date | date("Y-m-d") }}</td>
<td><a class="post-list-item" href="{{ post.url }}">{{ post.title }}</a></td>
</tr>
{% endfor %}
</table>
<hr>
<p>{% include '_partials/pagination.swig' %}</p>
<p>All posts <a href="/archive">archived</a></p>
{% endblock %}

