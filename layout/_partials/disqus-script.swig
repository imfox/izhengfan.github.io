{% if theme.disqus.enable %}
  {% if page.comments %}
    <script type="text/javascript">
      var disqus_config = function () {
        this.page.url = '{{ page.permalink }}';
        this.page.identifier = '{{ page.path }}';
        this.page.title = '{{ page.title| addslashes }}';
        {% if __('disqus') !== 'disqus' -%}
          this.language = '{{ __('disqus') }}';
        {% endif -%}
      };
      function loadComments () {
        var d = document, s = d.createElement('script');
        s.src = 'https://{{theme.disqus.shortname}}.disqus.com/embed.js';
        s.setAttribute('data-timestamp', '' + +new Date());
        (d.head || d.body).appendChild(s);
      }
      {% if theme.disqus.lazyload %}
        $(document).ready(function () {
            $('.disqus_btn').on('click', function(){
                // ajax request to load the disqus javascript
                loadComments();
                // hide the button once comments load
                $(this).fadeOut();
            });
        });
      {% else %}
        loadComments();
      {% endif %}
    </script>
  {% endif %}
{% endif %}
