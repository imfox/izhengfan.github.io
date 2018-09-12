{% if theme.disqus.enable %}
  {% if page.comments %}
      {% if theme.disqus.lazyload %}
      <div class="disqus_btn">点击加载Disqus评论</div>
      {% endif %}
      <div id="disqus_thread"></div>
  {% endif %}
{% endif %}
