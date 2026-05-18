{# ============================================================================
  XCROSS BR — snipplets/product_grid.tpl — v10
  Renderização nativa dos produtos da Nuvemshop com prioridade visual:
  1) produtos com "Língua de Gato" no nome
  2) produtos com "Joelheira" no nome
  3) demais produtos

  Observação: o snipplet preserva o item nativo da Nuvemshop via
  snipplets/grid/item.tpl, então variações, preço, estoque, labels e quick shop
  continuam sendo lidos do sistema da loja.
============================================================================ #}

{% if products and pages.is_last %}
  <div class="last-page" style="display:none;"></div>
{% endif %}

{# 1. Prioridade máxima: Língua de Gato #}
{% for product in products %}
  {% set product_name_priority = product.name | lower %}
  {% set is_lingua_de_gato = ('língua' in product_name_priority or 'lingua' in product_name_priority) and ('gato' in product_name_priority) %}
  {% if is_lingua_de_gato %}
    {% set image_priority_high_value = true %}
    {% include 'snipplets/grid/item.tpl' with { image_priority_high: image_priority_high_value } %}
  {% endif %}
{% endfor %}

{# 2. Segunda prioridade: Joelheira #}
{% for product in products %}
  {% set product_name_priority = product.name | lower %}
  {% set is_lingua_de_gato = ('língua' in product_name_priority or 'lingua' in product_name_priority) and ('gato' in product_name_priority) %}
  {% set is_joelheira = 'joelheira' in product_name_priority %}
  {% if is_joelheira and not is_lingua_de_gato %}
    {% set image_priority_high_value = true %}
    {% include 'snipplets/grid/item.tpl' with { image_priority_high: image_priority_high_value } %}
  {% endif %}
{% endfor %}

{# 3. Demais produtos, mantendo a listagem nativa #}
{% for product in products %}
  {% set product_name_priority = product.name | lower %}
  {% set is_lingua_de_gato = ('língua' in product_name_priority or 'lingua' in product_name_priority) and ('gato' in product_name_priority) %}
  {% set is_joelheira = 'joelheira' in product_name_priority %}
  {% if not is_lingua_de_gato and not is_joelheira %}
    {% set image_priority_high_value = false %}
    {% if loop.index in [1, 2] %}
      {% set image_priority_high_value = true %}
    {% endif %}
    {% include 'snipplets/grid/item.tpl' with { image_priority_high: image_priority_high_value } %}
  {% endif %}
{% endfor %}
