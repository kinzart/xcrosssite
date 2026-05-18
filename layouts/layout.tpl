{# /*============================================================================
  XCROSS BR — layouts/layout.tpl
  Idêntico ao original do tema base, com 1 bloco <style> adicional logo após
  o settings.css_code para injetar todo o CSS do layout v4.
==============================================================================*/ #}

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml" xmlns:og="http://opengraphprotocol.org/schema/" lang="{% for language in languages %}{% if language.active %}{{ language.lang }}{% endif %}{% endfor %}">
    <head>
        <link rel="preconnect" href="{{ store_resource_hints }}" />
        <link rel="dns-prefetch" href="{{ store_resource_hints }}" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>{{ page_title }}</title>
        <meta name="description" content="{{ page_description }}" />
        <link rel="preload" as="style" href="{{ [settings.font_headings, settings.font_rest] | google_fonts_url('400,700') }}" />
        <link rel="preload" href="{{ 'css/style-critical.scss' | static_url }}" as="style" />
        <link rel="preload" href="{{ 'js/external-no-dependencies.js.tpl' | static_url }}" as="script" />

        {% snipplet 'preload-images.tpl' %}

        {{ component('social-meta') }}

        <style>
            {{ component(
                'fonts',{
                    font_weights: '400,700',
                    font_settings: 'settings.font_headings, settings.font_rest'
                })
            }}

            {% include "static/css/style-tokens.tpl" %}
        </style>

        {{ 'css/style-critical.scss' | static_url | static_inline }}

        <link rel="stylesheet" href="{{ 'css/style-async.scss' | static_url }}" media="print" onload="this.media='all'">

        {# Loads custom CSS added from Advanced Settings on the admin´s theme customization screen #}

        <style>
            {{ settings.css_code | raw }}
        </style>

        {#/*============================================================================
            #XCROSS BR — Layout v4 custom override
        ==============================================================================*/#}

        <style>
            {% include "snipplets/xcross-custom-styles.tpl" %}
        </style>

        {% set async_js = true %}
        {% set nojquery = true %}

        {% if load_jquery %}
            {{ '//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js' | script_tag(true) }}
        {% endif %}

        {% head_content %}

        {{ component('structured-data-organization') }}
        {{ component('structured-data') }}

    </head>
    <body class="{% if customer %}customer-logged-in{% endif %} template-{{ template | replace('.', '-') }}">

        {{ component('nubesdk-slot', { type: "before_main_content" }) }}

        {% include "snipplets/svg/icons.tpl" %}

        {% if template == 'product' %}
            {% if settings.show_product_fb_comment_box %}
                {{ fb_js }}
            {% endif %}
            {{ pin_js }}
        {% endif %}

        {{back_to_admin}}

        {# Header XCross v4 #}
        {% snipplet "header/header.tpl" %}

        {# Page content #}
        {% template_content %}

        {# Quickshop modal (mantido do tema base) #}
        {% snipplet "grid/quick-shop.tpl" %}

        {# Footer XCross v4 + WhatsApp já incluso dentro #}
        {% snipplet "footer/footer.tpl" %}

        {% if cart.free_shipping.cart_has_free_shipping or cart.free_shipping.min_price_free_shipping.min_price %}
            <span class="js-ship-free-min hidden" data-pricemin="{{ cart.free_shipping.min_price_free_shipping.min_price_raw }}"></span>
            <span class="js-free-shipping-config hidden" data-config="{{ cart.free_shipping.allFreeConfigurations }}"></span>
            <span class="js-cart-subtotal hidden" data-priceraw="{{ cart.subtotal }}"></span>
            <span class="js-cart-discount hidden" data-priceraw="{{ cart.promotional_discount_amount }}"></span>
        {% endif %}

        {{ 'js/external-no-dependencies.js.tpl' | static_url | script_tag }}

        <script type="text/javascript">
            LS.ready.then(function(){
                {% include "static/js/external.js.tpl" %}
                {% include "static/js/store.js.tpl" %}
            });
        </script>

        {{ component('google-survey') }}

        {% if store.assorted_js %}
            <script>
                LS.ready.then(function() {
                    var trackingCode = jQueryNuvem.parseHTML('{{ store.assorted_js| escape("js") }}', document, true);
                    jQueryNuvem('body').append(trackingCode);
                });
            </script>
        {% endif %}
    </body>
</html>
