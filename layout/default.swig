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
<div class="info-bottom"><div class="info-bottom-text">
{% set cc = {'by': 1, 'by-nc': 1, 'by-nc-nd': 1, 'by-nc-sa': 1, 'by-nd': 1, 'by-sa': 1, 'zero': 1} %}
<div itemprop="license">
{% if theme.creative_commons in cc %}
  <a href="https://creativecommons.org/{% if theme.creative_commons === 'zero' %}publicdomain/zero/1.0{% else %}licenses/{{ theme.creative_commons }}/4.0{% endif %}/" target="_blank"{% if theme.seo %} rel="external nofollow"{% endif %}>
    <img src="{{ url_for(theme.images) }}/cc-{{ theme.creative_commons }}.svg" alt="Creative Commons" />
  </a>
| {% endif %} Github <a href="#">@xiaocang</a>
| Twitter <a href="#">@xiao_cang</a>
</div>
</div></div>
</div>
</body>
<script src="https://use.typekit.net/hvv6ahj.js"></script>
<script>try{Typekit.load({ async: true });}catch(e){}</script>
</html>
