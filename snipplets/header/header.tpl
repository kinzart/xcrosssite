{# /*============================================================================
  XCROSS BR — Header (snipplets/header/header.tpl)
  Design v4 + hooks Twig essenciais + modais do tema Baires (carrinho, nav, busca)
==============================================================================*/ #}

{# Site Overlay — necessário para os modais funcionarem #}
<div class="js-overlay site-overlay" style="display: none;"></div>

{# Topbar marquee #}
<div class="xc-topbar">
  <div class="xc-topbar-track">
    <span>XCROSSBR</span>
    <span>COMPRAS ACIMA DE R$300,00</span>
    <span>MUNHEQUEIRA CANELADA DE BRINDE</span>
    <span>XCROSSBR</span>
    <span>COMPRAS ACIMA DE R$300,00</span>
    <span>MUNHEQUEIRA CANELADA DE BRINDE</span>
  </div>
</div>

{# Header principal #}
<header class="xc-header">
  <div class="xc-container xc-header-inner">

<a class="xc-logo" href="/" aria-label="XCross BR">
  <img
    src="{{ 'images/header/Logo-Horizontal-XCrossBr.png' | static_url }}"
    alt="XCross BR"
    width="220"
    height="auto"
    loading="eager"
  >
</a>

    <nav class="xc-nav" aria-label="Navegação principal">
      <a href="/">Início</a>
      <a href="{{ store.products_url }}">Produtos</a>
      <a href="/contato/">Contato</a>
    </nav>

    <div class="xc-actions">

      {# Busca #}
      <a class="xc-icon-btn js-modal-open" href="#" data-toggle="#nav-search" aria-label="Buscar">
        <svg viewBox="0 0 24 24"><circle cx="11" cy="11" r="7"/><line x1="16.5" y1="16.5" x2="21" y2="21"/></svg>
      </a>

      {# Conta / Login #}
      <a class="xc-icon-btn" href="{% if customer %}{{ store.customer_home_url }}{% else %}{{ store.customer_login_url }}{% endif %}" aria-label="{% if customer %}Minha conta{% else %}Entrar{% endif %}">
        <svg viewBox="0 0 24 24"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/><circle cx="12" cy="7" r="4"/></svg>
      </a>

      {# Carrinho — abre painel lateral se ajax_cart ativo, senão vai pra página #}
      {% if settings.ajax_cart and template != 'cart' %}
        <a class="xc-icon-btn js-modal-open js-cart-open" href="#" data-toggle="#modal-cart" aria-label="Carrinho">
      {% else %}
        <a class="xc-icon-btn" href="{{ store.cart_url }}" aria-label="Carrinho">
      {% endif %}
        <svg viewBox="0 0 24 24"><path d="M6 2 3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4Z"/><path d="M3 6h18M16 10a4 4 0 0 1-8 0"/></svg>
        {% if cart.items_count and cart.items_count > 0 %}
          <span class="xc-cart-badge js-cart-amount-quantity">{{ cart.items_count }}</span>
        {% else %}
          <span class="xc-cart-badge js-cart-amount-quantity" style="display:none">0</span>
        {% endif %}
      </a>

      {# Hamburguer mobile — abre modal de navegação #}
      <button class="xc-hamb js-modal-open" data-toggle="#nav-hamburger" aria-label="Menu">
        <i></i><i></i><i></i>
      </button>

    </div>
  </div>
</header>

{# Modais do tema Baires: navegação hamburger, busca, carrinho lateral #}
{% include "snipplets/header/header-modals.tpl" %}

{# Notificação de "adicionado ao carrinho" #}
{% if settings.ajax_cart %}
  {% if not settings.head_fix_desktop %}
    <div class="d-block d-md-none">
  {% endif %}
    {% include "snipplets/notification.tpl" with {add_to_cart: true} %}
  {% if not settings.head_fix_desktop %}
    </div>
  {% endif %}
{% endif %}
