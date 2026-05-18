{% set has_filters_available = products and has_filters_enabled and (filter_categories is not empty or product_filters is not empty) %}

{# Only remove this if you want to take away the theme onboarding advices #}
{% set show_help = not has_products %}

{% if settings.pagination == 'infinite' %}
	{% paginate by 48 %}
{% else %}
	{% paginate by 48 %}
{% endif %}

<style>
/* XCROSS V13 — SOMENTE PÁGINA DE PRODUTOS/CATEGORIAS
   Objetivo: manter filtros nativos, melhorar margem/gap/layout e preservar a UX mobile.
   Não altera carrinho, checkout, produto ou snipplets nativos. */

:root{
  --xc-green:#18e016;
  --xc-green-2:#72ff4b;
  --xc-bg:#070807;
  --xc-surface:#111511;
  --xc-surface-2:#171c17;
  --xc-line:rgba(114,255,75,.18);
  --xc-line-2:rgba(255,255,255,.10);
  --xc-text:#f3f6ef;
  --xc-muted:#a7afa1;
  --xc-dark:#061406;
}

.category-body.xcross-category-v13{
  background:var(--xc-bg);
  color:var(--xc-text);
}

.xcross-products-container{
  width:min(90%, 1320px);
  margin:0 auto;
  padding:26px 0 72px;
}

.xcross-category-intro{
  display:flex;
  align-items:flex-end;
  justify-content:space-between;
  gap:24px;
  margin:0 0 24px;
}

.xcross-kicker{
  color:var(--xc-green);
  font-size:12px;
  line-height:1;
  font-weight:900;
  text-transform:uppercase;
  letter-spacing:.14em;
  margin-bottom:10px;
}

.xcross-category-title{
  font-family:'Bebas Neue', Impact, sans-serif;
  color:var(--xc-text);
  font-size:clamp(42px, 5.5vw, 76px);
  line-height:.92;
  text-transform:uppercase;
  letter-spacing:.02em;
  margin:0;
}

.xcross-category-title span{color:var(--xc-green)}

.xcross-category-subtitle{
  color:var(--xc-muted);
  font-size:15px;
  max-width:580px;
  margin:10px 0 0;
}

.xcross-category-pills{
  display:flex;
  gap:10px;
  flex-wrap:wrap;
  align-items:center;
  margin:0 0 28px;
}

.xcross-category-pills a{
  display:inline-flex;
  align-items:center;
  justify-content:center;
  min-height:42px;
  border:1px solid rgba(114,255,75,.28);
  background:rgba(255,255,255,.02);
  color:#dfe8da;
  border-radius:999px;
  padding:10px 18px;
  font-size:12px;
  font-weight:900;
  text-transform:uppercase;
  letter-spacing:.06em;
  text-decoration:none;
  white-space:nowrap;
  transition:.25s ease;
}

.xcross-category-pills a:hover,
.xcross-category-pills a.active{
  background:var(--xc-green);
  border-color:var(--xc-green);
  color:var(--xc-dark);
  transform:translateY(-1px);
}

.xcross-shop-layout.row{
  display:flex;
  flex-wrap:nowrap;
  align-items:flex-start;
  gap:clamp(24px, 4vw, 56px);
  margin-left:0!important;
  margin-right:0!important;
}

/* Coluna esquerda: filtros nativos */
.xcross-shop-layout > .filters-sidebar{
  flex:0 0 27%!important;
  width:27%!important;
  max-width:340px!important;
  min-width:245px!important;
  margin:0!important;
  padding:22px 20px!important;
  border:1px solid var(--xc-line)!important;
  border-radius:24px!important;
  background:linear-gradient(180deg, rgba(23,28,23,.96), rgba(7,8,7,.96))!important;
  box-shadow:0 18px 60px rgba(0,0,0,.26);
  position:sticky;
  top:96px;
  max-height:calc(100vh - 118px);
  overflow:auto;
  scrollbar-width:thin;
}

.xcross-shop-layout > .filters-sidebar::-webkit-scrollbar{width:6px}
.xcross-shop-layout > .filters-sidebar::-webkit-scrollbar-thumb{background:rgba(114,255,75,.35);border-radius:999px}

/* Coluna direita: produtos */
.xcross-shop-layout > .col,
.xcross-shop-layout > [data-store^='category-grid'],
.xcross-shop-layout > [data-store='search-grid']{
  flex:1 1 0!important;
  min-width:0!important;
  max-width:none!important;
  padding-left:0!important;
  padding-right:0!important;
}

.xcross-shop-layout .js-product-table.row-grid{
  margin-left:-11px!important;
  margin-right:-11px!important;
  row-gap:28px;
}

.xcross-shop-layout .col-grid,
.xcross-shop-layout .item-product{
  padding-left:11px!important;
  padding-right:11px!important;
  margin-bottom:26px!important;
}

.xcross-shop-layout .item-product .item{
  height:100%;
  border:1px solid var(--xc-line-2);
  border-radius:22px;
  background:var(--xc-surface);
  overflow:hidden;
  transition:.25s ease;
}

.xcross-shop-layout .item-product .item:hover{
  border-color:rgba(114,255,75,.32);
  transform:translateY(-4px);
  box-shadow:0 22px 70px rgba(0,0,0,.34);
}

.xcross-shop-layout .item-image,
.xcross-shop-layout .js-item-image-padding{
  background:#0b0d0b;
}

.xcross-shop-layout .item-description{
  padding:15px 14px 16px!important;
}

/* Categorias verdes dentro dos cards — aparece quando item.tpl permitir em category */
.xcross-shop-layout .xc2-card-category{
  display:inline-flex!important;
  width:auto!important;
  max-width:100%;
  align-items:center;
  justify-content:center;
  border-radius:999px;
  background:rgba(24,224,22,.12);
  border:1px solid rgba(24,224,22,.35);
  color:var(--xc-green-2)!important;
  padding:5px 9px;
  margin:0 0 8px;
  font-size:10px;
  line-height:1;
  font-weight:900;
  text-transform:uppercase;
  letter-spacing:.08em;
}

.xcross-shop-layout .item-name{
  color:var(--xc-text)!important;
  font-weight:900!important;
  font-size:15px!important;
  line-height:1.24!important;
  white-space:normal!important;
  overflow:visible!important;
  text-overflow:clip!important;
  display:block!important;
  max-height:none!important;
  min-height:auto!important;
  -webkit-line-clamp:unset!important;
  line-clamp:unset!important;
}

.xcross-shop-layout .item-price-container,
.xcross-shop-layout .item-price{
  color:var(--xc-text)!important;
  font-weight:900;
}

.xcross-shop-layout .price-compare{
  color:rgba(255,255,255,.45)!important;
}

/* Visual dos filtros nativos */
.xcross-shop-layout .filters-sidebar .font-extra-large,
.xcross-shop-layout .filters-sidebar h2,
.xcross-shop-layout .filters-sidebar .h2{
  color:var(--xc-text)!important;
  font-family:'Bebas Neue', Impact, sans-serif;
  font-size:25px!important;
  line-height:.95;
  letter-spacing:.035em;
  text-transform:uppercase;
  margin-bottom:14px!important;
}

.xcross-shop-layout .filters-sidebar a,
.xcross-shop-layout .filters-sidebar .font-small,
.xcross-shop-layout .filters-sidebar label{
  color:#cbd5c7!important;
  font-size:13px!important;
  line-height:1.35;
}

.xcross-shop-layout .filters-sidebar a:hover{
  color:var(--xc-green)!important;
}

.xcross-shop-layout .filters-sidebar .mb-4{
  margin-bottom:18px!important;
}

.xcross-shop-layout .filters-sidebar .pb-2{
  padding-bottom:12px!important;
}

.xcross-shop-layout .filters-sidebar select,
.xcross-shop-layout .filters-sidebar input{
  background:#090b09!important;
  color:var(--xc-text)!important;
  border:1px solid rgba(114,255,75,.20)!important;
  border-radius:12px!important;
}

.xcross-shop-layout .filters-sidebar .btn,
.xcross-shop-layout .filters-sidebar button{
  border-radius:999px!important;
}

/* Botão nativo mobile de filtrar e ordenar */
.js-toggle-filters,
.btn-filter,
[data-toggle='#filters-modal']{
  border-radius:999px!important;
}

@media(max-width: 992px){
  .xcross-products-container{
    width:min(100% - 28px, 1320px);
    padding-top:18px;
  }

  .xcross-category-intro{
    align-items:flex-start;
    flex-direction:column;
    gap:14px;
    margin-bottom:18px;
  }

  .xcross-category-pills{
    flex-wrap:nowrap;
    overflow-x:auto;
    -webkit-overflow-scrolling:touch;
    padding-bottom:6px;
    margin-bottom:18px;
  }

  .xcross-category-pills a{
    min-height:38px;
    padding:9px 14px;
    font-size:11px;
  }

  .xcross-shop-layout.row{
    display:block;
  }

  /* Mobile usa o modal nativo de filtros. O sidebar desktop fica oculto para não esmagar os cards. */
  .xcross-shop-layout > .filters-sidebar{
    display:none!important;
  }

  .xcross-shop-layout .js-product-table.row-grid{
    margin-left:-7px!important;
    margin-right:-7px!important;
    row-gap:18px;
  }

  .xcross-shop-layout .col-grid,
  .xcross-shop-layout .item-product{
    padding-left:7px!important;
    padding-right:7px!important;
    margin-bottom:18px!important;
  }

  .xcross-shop-layout .item-product .item{
    border-radius:18px;
  }

  .xcross-shop-layout .item-description{
    padding:12px 10px 13px!important;
  }

  .xcross-shop-layout .item-name{
    font-size:12.8px!important;
    line-height:1.22!important;
    min-height:45px!important;
  }

  .xcross-shop-layout .xc2-card-category{
    font-size:9px;
    padding:4px 7px;
    margin-bottom:7px;
  }
}

@media(max-width: 420px){
  .xcross-products-container{width:calc(100% - 22px)}
  .xcross-category-title{font-size:40px}
  .xcross-shop-layout .item-name{font-size:12px!important;min-height:44px!important}
}
</style>

{% if not show_help %}

{% set category_banner = (category.images is not empty) or ("banner-products.jpg" | has_custom_image) %}
{% set has_category_description_without_banner = not category_banner and category.description %}

{% if category_banner %}
	{% include 'snipplets/category-banner.tpl' %}
{% endif %}

{% if category.description or not category_banner %}
	<div class="container-fluid">
		{% set page_header_padding = category.description ? false : true %}
		{% set page_header_classes = category.description ? 'pt-4 pb-2 pt-md-4 pb-md-2' %}

		{% if category_banner %}
			{% include 'snipplets/breadcrumbs.tpl' with {breadcrumbs_custom_class: 'mt-4'} %}
		{% else %}
			{% embed "snipplets/page-header.tpl" with {container: false, padding: page_header_padding, page_header_class: page_header_classes} %}
				{% block page_header_text %}{{ category.name }}{% endblock page_header_text %}
			{% endembed %}
		{% endif %}

		{% if category.description %}
			<p class="{% if category_banner %}mt-3 py-md-2{% else %}mb-4 pb-1{% endif %}">{{ category.description }}</p>
		{% endif %}
	</div>
{% endif %}

{% include 'snipplets/grid/filters-modals.tpl' %}

<section class="category-body xcross-category-v13 {% if settings.filters_desktop_modal %}pt-md-2{% endif %}" data-store="category-grid-{{ category.id }}">
	<div class="xcross-products-container">

		<div class="xcross-category-intro">
			<div>
				<div class="xcross-kicker">Loja oficial</div>
				<h1 class="xcross-category-title">{{ category.name ?: 'Produtos' }} <span>XCross</span></h1>
				<p class="xcross-category-subtitle">Use os filtros nativos para cor, tamanho, preço e ordenação. Os cards mantêm compra, variações, estoque e checkout nativos da Nuvemshop.</p>
			</div>
		</div>

		<nav class="xcross-category-pills" aria-label="Categorias rápidas">
			<a href="/produtos/" class="{% if category.name == 'Produtos' %}active{% endif %}">Todos</a>
			<a href="/hand-grip/" class="{% if category.name == 'HAND GRIP' or category.name == 'Hand Grip' %}active{% endif %}">Hand Grip</a>
			<a href="/hand-grip/lingua-de-gato/" class="{% if category.name == 'LÍNGUA DE GATO' or category.name == 'Língua de Gato' %}active{% endif %}">Língua de Gato</a>
			<a href="/hand-grip/anatomic/" class="{% if category.name == 'Anatômic' or category.name == 'Anatomic' %}active{% endif %}">Anatômic</a>
			<a href="/hand-grip/classic/" class="{% if category.name == 'Classic' %}active{% endif %}">Classic</a>
			<a href="/munhequeira/" class="{% if category.name == 'MUNHEQUEIRA' or category.name == 'Munhequeira' %}active{% endif %}">Munhequeira</a>
			<a href="/joelheira/" class="{% if category.name == 'Joelheira' %}active{% endif %}">Joelheira</a>
			<a href="/acessorios/" class="{% if category.name == 'Acessórios' or category.name == 'Acessorios' %}active{% endif %}">Acessórios</a>
			<a href="/novidades/" class="{% if category.name == 'Novidades' %}active{% endif %}">Novidades</a>
			<a href="/outlet/" class="{% if category.name == 'Outlet' %}active{% endif %}">Outlet</a>
		</nav>

		<div class="row xcross-shop-layout">
			{% include 'snipplets/grid/filters-sidebar.tpl' %}
			{% include 'snipplets/grid/products-list.tpl' %}
		</div>

	</div>
</section>

<script>
(function(){
  function normalize(text){
    return (text || '').toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g,'');
  }
  function score(card){
    var text = normalize(card.textContent || '');
    if(text.indexOf('lingua de gato') !== -1) return 1;
    if(text.indexOf('joelheira') !== -1) return 2;
    return 10;
  }
  function reorderProducts(){
    document.querySelectorAll('.xcross-category-v13 .js-product-table').forEach(function(grid){
      var cards = Array.prototype.slice.call(grid.children).filter(function(el){
        return el.classList && (el.classList.contains('item-product') || el.classList.contains('js-item-product'));
      });
      if(cards.length < 3) return;
      cards.sort(function(a,b){ return score(a) - score(b); });
      cards.forEach(function(card){ grid.appendChild(card); });
    });
  }
  document.addEventListener('DOMContentLoaded', reorderProducts);
  document.addEventListener('LS:pagination:loaded', reorderProducts);
})();
</script>

{% elseif show_help %}
	{# Category Placeholder #}
	{% include 'snipplets/defaults/show_help_category.tpl' %}
{% endif %}
