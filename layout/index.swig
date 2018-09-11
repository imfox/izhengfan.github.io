{% extends 'default.swig' %}

{% block content %}
<article>
<blockquote><p>{{ description }}</p></blockquote>
</article>

<p style="margin-top:1.2em;margin-bottom:0;"><b>Blogs</b> | Browse by <a href="/archive#tags">Tags</a></p>
<hr>
<table>
{% autoescape false %}
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
<script src="https://use.typekit.net/hvv6ahj.js"></script>
<script>try{Typekit.load({ async: true });}catch(e){}</script>
{% endblock %}

