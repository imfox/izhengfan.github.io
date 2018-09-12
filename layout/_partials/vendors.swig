{# Reset `window.Promise` when it was not a function. #}
{# IE refers the element whose id is `Promise` as `window.Promise`, this causes Velocity throwing an exception #}
<script type="text/javascript">
  if (Object.prototype.toString.call(window.Promise) !== '[object Function]') {
    window.Promise = null;
  }
</script>

{% set js_vendors = {} %}
{% set js_vendors.jquery      = 'jquery/index.js?v=2.1.3' %}

{% if theme.lazyload %}
  {% set js_vendors.lazyload    = 'jquery_lazyload/jquery.lazyload.js?v=1.9.7' %}
{% endif %}

{% set js_vendors.velocity    = 'velocity/velocity.min.js?v=1.2.1' %}
{% set js_vendors.velocity_ui = 'velocity/velocity.ui.min.js?v=1.2.1' %}

{% for name, internal in js_vendors %}
  {% set internal_script = url_for(theme.vendors._internal) + '/' + internal %}
  {% if name == 'canvas_ribbon' %}
    <script id="ribbon" type="text/javascript" size="{{ theme.canvas_ribbon.size }}" alpha="{{ theme.canvas_ribbon.alpha }}"  zIndex="{{theme.canvas_ribbon.zIndex }}" src="{{ theme.vendors[name] | default(internal_script) }}"></script>
  {% else %}
    <script type="text/javascript" src="{{ theme.vendors[name] | default(internal_script) }}"></script>
  {% endif %}
{% endfor %}
