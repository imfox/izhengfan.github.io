<!DOCTYPE html>

{# Init Config #}
{% set title = __('title') !== 'title' && __('title') || config.title %}
{% set author = __('author') !== 'author' && __('author') || config.author %}
{% set description = __('description') !== 'description' && __('description') || config.description %}

<html>
{% include 'head.swig' %}
<body>
<div class="body-wrapper">
<div class="nav-header">
<a href="{{ config.root }}">{{ title }}</a> | <a href="/about">About </a>
</div>
<div class="main-body">
{% block content %}{% endblock %}
</div>
{% include 'footer.swig' %}
</body>
<script src="https://use.typekit.net/hvv6ahj.js"></script>
<script>try{Typekit.load({ async: true });}catch(e){}</script>
</html>
