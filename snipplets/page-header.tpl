{# /*============================================================================
  #Page header
==============================================================================*/

#Properties

#Title

#Breadcrumbs

#}

{% set breadcrumbs = breadcrumbs ?? true %}
{% set padding = padding ?? true %}
{% set container = container ?? true %}
{% set container_fluid = container_fluid ?? false %}
{% set page_header_title_default_classes = template != 'product' and template != 'blog-post' ? 'h1-huge-md' %}

{% if container or container_fluid %}
	<div class="container{% if container_fluid %}-fluid{% endif %}">
{% endif %}
			<section class="page-header {% if padding %}py-4{% endif %} {{ page_header_class }}" data-store="page-title">
				{% if breadcrumbs %}
					{% include 'snipplets/breadcrumbs.tpl' %}
				{% endif %}
				{% if template == 'product' %}

					{{ component('nubesdk-slot', { type: "before_product_detail_name" }) }}

				{% endif %}
				<h1 class="h3-huge {{ page_header_title_default_classes }} {{ page_header_title_class }}" {% if template == "product" %}data-store="product-name-{{ product.id }}"{% endif %}>{% block page_header_text %}{% endblock %}</h1>
				{% if template == 'product' %}

					{{ component('nubesdk-slot', { type: "after_product_detail_name" }) }}

				{% endif %}
			</section>
{% if container or container_fluid %}
	</div>
{% endif %}
