{# bottom #}
<div class="info-bottom"><div class="info-bottom-text">
<div itemprop="license">
{# social #}
{% if theme.social %}
{% for name, link in theme.social %}
<a href="{{ link.split('||')[0] | trim }}" target="_blank" title="{{ name }}">
{% if theme.social_icons.enable %}
<i class="fa fa-fw fa-{{ link.split('||')[1] | trim | default('globe') }}"></i>
{% endif %}
{% if not theme.social_icons.icons_only %}{{ name }}{% endif %}
</a>
{% endfor %}
{% endif %}{# social #}


{# copyright #}
{% set current = date(Date.now(), "YYYY") %}{#
#}&copy; {% if theme.footer.since and theme.footer.since != current %}{{ theme.footer.since }} &mdash; {% endif %}{#
#}<span itemprop="copyrightYear">{{ current }}</span>

{# license #}
{% set cc = {'by': 1, 'by-nc': 1, 'by-nc-nd': 1, 'by-nc-sa': 1, 'by-nd': 1, 'by-sa': 1, 'zero': 1} %}
{% if theme.creative_commons in cc %}
  <a href="https://creativecommons.org/{% if theme.creative_commons === 'zero' %}publicdomain/zero/1.0{% else %}licenses/{{ theme.creative_commons }}/4.0{% endif %}/" target="_blank"{% if theme.seo %} rel="external nofollow"{% endif %}>
    <img src="{{ url_for(theme.images) }}/cc-{{ theme.creative_commons }}.svg" alt="Creative Commons" />
  </a>
{% endif %}{# license #}

<span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright | default(author) }}</span>

{% if theme.footer.custom_text %}
  | {{ theme.footer.custom_text }}
{% endif %}

</div><!-- license -->
</div></div>
</div>
