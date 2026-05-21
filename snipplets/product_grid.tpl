{# ============================================================================
 XCROSS BR — snipplets/product_grid.tpl — v11

 Ordem visual travada:
 1) Língua de Gato
 2) Joelheira
 3) Anatômics
 4) Munhequeiras
 5) Acessórios
 6) Outros produtos
 7) Outlet por último

 Mantém o item nativo da Nuvemshop via snipplets/grid/item.tpl.
============================================================================ #}

{% if products and pages.is_last %}
  <div class="last-page" style="display:none;"></div>
{% endif %}


{# 1. LÍNGUA DE GATO — não outlet #}
{% for product in products %}
  {% set product_name_priority = product.name | lower %}
  {% set product_main_category_priority = product.category.name ? (product.category.name | lower) : '' %}
  {% set product_default_category_priority = product.default_category.name ? (product.default_category.name | lower) : '' %}
  {% set product_first_category_priority = product.categories[0].name ? (product.categories[0].name | lower) : '' %}
  {% set product_priority_text = product_name_priority ~ ' ' ~ product_main_category_priority ~ ' ' ~ product_default_category_priority ~ ' ' ~ product_first_category_priority %}

  {% set is_outlet = 'outlet' in product_priority_text %}
  {% set is_lingua_de_gato = ('língua' in product_priority_text or 'lingua' in product_priority_text) and ('gato' in product_priority_text) %}

  {% if is_lingua_de_gato and not is_outlet %}
    {% include 'snipplets/grid/item.tpl' with { image_priority_high: true } %}
  {% endif %}
{% endfor %}


{# 2. JOELHEIRA — não outlet #}
{% for product in products %}
  {% set product_name_priority = product.name | lower %}
  {% set product_main_category_priority = product.category.name ? (product.category.name | lower) : '' %}
  {% set product_default_category_priority = product.default_category.name ? (product.default_category.name | lower) : '' %}
  {% set product_first_category_priority = product.categories[0].name ? (product.categories[0].name | lower) : '' %}
  {% set product_priority_text = product_name_priority ~ ' ' ~ product_main_category_priority ~ ' ' ~ product_default_category_priority ~ ' ' ~ product_first_category_priority %}

  {% set is_outlet = 'outlet' in product_priority_text %}
  {% set is_lingua_de_gato = ('língua' in product_priority_text or 'lingua' in product_priority_text) and ('gato' in product_priority_text) %}
  {% set is_joelheira = 'joelheira' in product_priority_text %}

  {% if is_joelheira and not is_lingua_de_gato and not is_outlet %}
    {% include 'snipplets/grid/item.tpl' with { image_priority_high: true } %}
  {% endif %}
{% endfor %}


{# 3. ANATÔMICS — não outlet #}
{% for product in products %}
  {% set product_name_priority = product.name | lower %}
  {% set product_main_category_priority = product.category.name ? (product.category.name | lower) : '' %}
  {% set product_default_category_priority = product.default_category.name ? (product.default_category.name | lower) : '' %}
  {% set product_first_category_priority = product.categories[0].name ? (product.categories[0].name | lower) : '' %}
  {% set product_priority_text = product_name_priority ~ ' ' ~ product_main_category_priority ~ ' ' ~ product_default_category_priority ~ ' ' ~ product_first_category_priority %}

  {% set is_outlet = 'outlet' in product_priority_text %}
  {% set is_lingua_de_gato = ('língua' in product_priority_text or 'lingua' in product_priority_text) and ('gato' in product_priority_text) %}
  {% set is_joelheira = 'joelheira' in product_priority_text %}
  {% set is_anatomic = 'anatomic' in product_priority_text or 'anatômic' in product_priority_text or 'anatomics' in product_priority_text or 'anatômics' in product_priority_text or 'anatomico' in product_priority_text or 'anatômico' in product_priority_text %}

  {% if is_anatomic and not is_lingua_de_gato and not is_joelheira and not is_outlet %}
    {% include 'snipplets/grid/item.tpl' with { image_priority_high: false } %}
  {% endif %}
{% endfor %}


{# 4. MUNHEQUEIRAS — não outlet #}
{% for product in products %}
  {% set product_name_priority = product.name | lower %}
  {% set product_main_category_priority = product.category.name ? (product.category.name | lower) : '' %}
  {% set product_default_category_priority = product.default_category.name ? (product.default_category.name | lower) : '' %}
  {% set product_first_category_priority = product.categories[0].name ? (product.categories[0].name | lower) : '' %}
  {% set product_priority_text = product_name_priority ~ ' ' ~ product_main_category_priority ~ ' ' ~ product_default_category_priority ~ ' ' ~ product_first_category_priority %}

  {% set is_outlet = 'outlet' in product_priority_text %}
  {% set is_lingua_de_gato = ('língua' in product_priority_text or 'lingua' in product_priority_text) and ('gato' in product_priority_text) %}
  {% set is_joelheira = 'joelheira' in product_priority_text %}
  {% set is_anatomic = 'anatomic' in product_priority_text or 'anatômic' in product_priority_text or 'anatomics' in product_priority_text or 'anatômics' in product_priority_text or 'anatomico' in product_priority_text or 'anatômico' in product_priority_text %}
  {% set is_munhequeira = 'munhequeira' in product_priority_text %}

  {% if is_munhequeira and not is_lingua_de_gato and not is_joelheira and not is_anatomic and not is_outlet %}
    {% include 'snipplets/grid/item.tpl' with { image_priority_high: false } %}
  {% endif %}
{% endfor %}


{# 5. ACESSÓRIOS — não outlet #}
{% for product in products %}
  {% set product_name_priority = product.name | lower %}
  {% set product_main_category_priority = product.category.name ? (product.category.name | lower) : '' %}
  {% set product_default_category_priority = product.default_category.name ? (product.default_category.name | lower) : '' %}
  {% set product_first_category_priority = product.categories[0].name ? (product.categories[0].name | lower) : '' %}
  {% set product_priority_text = product_name_priority ~ ' ' ~ product_main_category_priority ~ ' ' ~ product_default_category_priority ~ ' ' ~ product_first_category_priority %}

  {% set is_outlet = 'outlet' in product_priority_text %}
  {% set is_lingua_de_gato = ('língua' in product_priority_text or 'lingua' in product_priority_text) and ('gato' in product_priority_text) %}
  {% set is_joelheira = 'joelheira' in product_priority_text %}
  {% set is_anatomic = 'anatomic' in product_priority_text or 'anatômic' in product_priority_text or 'anatomics' in product_priority_text or 'anatômics' in product_priority_text or 'anatomico' in product_priority_text or 'anatômico' in product_priority_text %}
  {% set is_munhequeira = 'munhequeira' in product_priority_text %}
  {% set is_acessorio = 'acessorio' in product_priority_text or 'acessório' in product_priority_text or 'acessorios' in product_priority_text or 'acessórios' in product_priority_text or 'pochete' in product_priority_text or 'luva' in product_priority_text %}

  {% if is_acessorio and not is_lingua_de_gato and not is_joelheira and not is_anatomic and not is_munhequeira and not is_outlet %}
    {% include 'snipplets/grid/item.tpl' with { image_priority_high: false } %}
  {% endif %}
{% endfor %}


{# 6. OUTROS PRODUTOS — não outlet, para não sumir nada #}
{% for product in products %}
  {% set product_name_priority = product.name | lower %}
  {% set product_main_category_priority = product.category.name ? (product.category.name | lower) : '' %}
  {% set product_default_category_priority = product.default_category.name ? (product.default_category.name | lower) : '' %}
  {% set product_first_category_priority = product.categories[0].name ? (product.categories[0].name | lower) : '' %}
  {% set product_priority_text = product_name_priority ~ ' ' ~ product_main_category_priority ~ ' ' ~ product_default_category_priority ~ ' ' ~ product_first_category_priority %}

  {% set is_outlet = 'outlet' in product_priority_text %}
  {% set is_lingua_de_gato = ('língua' in product_priority_text or 'lingua' in product_priority_text) and ('gato' in product_priority_text) %}
  {% set is_joelheira = 'joelheira' in product_priority_text %}
  {% set is_anatomic = 'anatomic' in product_priority_text or 'anatômic' in product_priority_text or 'anatomics' in product_priority_text or 'anatômics' in product_priority_text or 'anatomico' in product_priority_text or 'anatômico' in product_priority_text %}
  {% set is_munhequeira = 'munhequeira' in product_priority_text %}
  {% set is_acessorio = 'acessorio' in product_priority_text or 'acessório' in product_priority_text or 'acessorios' in product_priority_text or 'acessórios' in product_priority_text or 'pochete' in product_priority_text or 'luva' in product_priority_text %}

  {% if not is_outlet and not is_lingua_de_gato and not is_joelheira and not is_anatomic and not is_munhequeira and not is_acessorio %}
    {% include 'snipplets/grid/item.tpl' with { image_priority_high: false } %}
  {% endif %}
{% endfor %}


{# 7. OUTLET — sempre no final #}
{% for product in products %}
  {% set product_name_priority = product.name | lower %}
  {% set product_main_category_priority = product.category.name ? (product.category.name | lower) : '' %}
  {% set product_default_category_priority = product.default_category.name ? (product.default_category.name | lower) : '' %}
  {% set product_first_category_priority = product.categories[0].name ? (product.categories[0].name | lower) : '' %}
  {% set product_priority_text = product_name_priority ~ ' ' ~ product_main_category_priority ~ ' ' ~ product_default_category_priority ~ ' ' ~ product_first_category_priority %}

  {% set is_outlet = 'outlet' in product_priority_text %}

  {% if is_outlet %}
    {% include 'snipplets/grid/item.tpl' with { image_priority_high: false } %}
  {% endif %}
{% endfor %}