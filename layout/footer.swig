{# bottom #}
<div class="info-bottom"><div class="info-bottom-text">
<div itemprop="license">

{# license #}
{% set cc = {'by': 1, 'by-nc': 1, 'by-nc-nd': 1, 'by-nc-sa': 1, 'by-nd': 1, 'by-sa': 1, 'zero': 1} %}
{% if theme.creative_commons in cc %}
  <a href="https://creativecommons.org/{% if theme.creative_commons === 'zero' %}publicdomain/zero/1.0{% else %}licenses/{{ theme.creative_commons }}/4.0{% endif %}/" target="_blank"{% if theme.seo %} rel="external nofollow"{% endif %}>
    <img src="{{ url_for(theme.images) }}/cc-{{ theme.creative_commons }}.svg" alt="Creative Commons" />
  </a>
{% endif %}{# license #}

{# copyright #}
&copy;<span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright | default(author) }}</span>
{% set current = date(Date.now(), "YYYY") %}{#
#} {% if theme.footer.since and theme.footer.since != current %}{{ theme.footer.since }} - 2018 {% endif %}{#
#}
{# <span itemprop="copyrightYear">{{ current }}</span> #}


{% if theme.footer.custom_text %}
  | {{ theme.footer.custom_text | join(" | ") }}
{% endif %}

</div><!-- license -->
</div></div>
</div>
