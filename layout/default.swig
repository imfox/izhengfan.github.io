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
{% if theme.creative_commons in cc %}
License <a href="https://creativecommons.org/{% if theme.creative_commons === 'zero' %}publicdomain/zero/1.0{% else %}licenses/{{ theme.creative_commons }}/4.0{% endif %}/">(CC) {{ theme.creative_commons | upper }}</a> | Github <a href="#"></a> | Twitter <a href="#"></a> | <div itemprop="license">
  <a href="https://creativecommons.org/{% if theme.creative_commons === 'zero' %}publicdomain/zero/1.0{% else %}licenses/{{ theme.creative_commons }}/4.0{% endif %}/" target="_blank"{% if theme.seo %} rel="external nofollow"{% endif %}>
    <img src="{{ url_for(theme.images) }}/cc-{{ theme.creative_commons }}.svg" alt="Creative Commons" />
  </a>
</div>
{% endif %}
</div></div>
</div>
</body>
</html>
