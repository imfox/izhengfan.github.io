<!DOCTYPE html>

{# Init Config #}
{% set title = __('title') !== 'title' && __('title') || config.title %}
{% set author = __('author') !== 'author' && __('author') || config.author %}
{% set description = __('description') !== 'description' && __('description') || config.description %}

<html>
{% include head.swig %}
<body>
<div class="body-wrapper">
<div class="nav-header">
<a href="{{ config.root }}">{{ title }}</a> | <a href="/about">About </a>
</div>
<div class="main-body">
{{ content }}
</div>
<div class="info-bottom"><div class="info-bottom-text">
License <a href="http://creativecommons.org/licenses/by-nc-sa/3.0/">(CC) BY-NC-SA</a> | Subscribe <a href="/feed.xml">RSS</a> | Email <a href="mailto:fzheng@link.cuhk.edu.hk">fzheng@link.cuhk.edu.hk</a>
</div></div>
</div>
</body>
</html>
