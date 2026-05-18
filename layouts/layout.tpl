{# /*============================================================================
  XCROSS BR — layouts/layout.tpl
  v4 + modais do carrinho + redirect automático ao carrinho após add
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

        {# Header XCross v4 (inclui overlay + modais + notificação) #}
        {% snipplet "header/header.tpl" %}

        {# Page content #}
        {% template_content %}

        {# Quickshop modal #}
        {% snipplet "grid/quick-shop.tpl" %}

        {# Footer XCross v4 + WhatsApp #}
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

        {#/*============================================================================
            #XCROSS BR — Redirect automático ao carrinho após adicionar produto
        ==============================================================================*/#}
        <script>
        (function(){
            var cartUrl = '{{ store.cart_url | escape("js") }}';

            {# Intercepta a resposta do LS.addToCartEnhanced via MutationObserver #}
            {# Quando a notificação "adicionado ao carrinho" aparece, redireciona #}
            var observer = new MutationObserver(function(mutations){
                mutations.forEach(function(m){
                    if (m.type === 'attributes' && m.attributeName === 'style') {
                        var el = m.target;
                        if (el.classList.contains('js-alert-added-to-cart') && el.style.display !== 'none') {
                            {# Produto adicionado com sucesso — redireciona ao carrinho #}
                            setTimeout(function(){ window.location.href = cartUrl; }, 300);
                        }
                    }
                });
            });

            {# Observa mudanças na notificação de add-to-cart #}
            function startObserving(){
                var notifications = document.querySelectorAll('.js-alert-added-to-cart');
                notifications.forEach(function(notif){
                    observer.observe(notif, { attributes: true, attributeFilter: ['style'] });
                });
            }

            {# Fallback: intercepta submit de forms de carrinho #}
            document.addEventListener('submit', function(e){
                var form = e.target;
                if (form.classList.contains('js-product-form')) {
                    {# Se ajax_cart está desativado, o form faz POST normal pro carrinho #}
                    {# Se ativado, o JS do LS intercepta — o observer cuida do redirect #}
                }
            });

            {# Inicia quando o DOM estiver pronto #}
            if (document.readyState === 'loading') {
                document.addEventListener('DOMContentLoaded', startObserving);
            } else {
                startObserving();
            }

            {# Também observa se a notificação for criada dinamicamente depois #}
            var bodyObserver = new MutationObserver(function(){
                startObserving();
            });
            bodyObserver.observe(document.body, { childList: true, subtree: true });
        })();
        </script>

    </body>
</html>
