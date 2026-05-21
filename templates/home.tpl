{# /*============================================================================
 XCROSS BR — templates/home.tpl — V12 SAFE
 Home com carrossel, benefícios e produtos em destaque puxados da Nuvemshop.
 A ordem dos produtos da home passa a ser controlada no painel da Nuvemshop.
==============================================================================*/ #}

<style>
/* XCROSS — ajustes da vitrine dinâmica da home */

.xc-home-dynamic-products{
  margin-top:28px;
}

.xc-home-dynamic-products .xc-product{
  overflow:hidden;
}

.xc-home-dynamic-products .xc-p-img{
  display:block;
  position:relative;
}

.xc-home-dynamic-products .xc-p-img img{
  width:100%;
  display:block;
}

@media(max-width:460px){
  #xc-home-products{
    grid-template-columns:repeat(2,minmax(0,1fr))!important;
    gap:10px!important;
  }

  #xc-home-products .xc-p-info{
    padding:10px!important;
    min-height:190px;
  }

  #xc-home-products .xc-p-cat{
    font-size:10px;
    line-height:1.2;
  }

  #xc-home-products .xc-p-name{
    font-size:12px;
    line-height:1.25;
  }

  #xc-home-products .xc-p-price strong{
    font-size:15px;
  }

  #xc-home-products .xc-installments{
    font-size:11px;
  }

  #xc-home-products .xc-btn-small{
    padding:10px 8px;
    font-size:11px;
  }
}
</style> 

<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window, document,'script','https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '1244365213447452');
fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none" alt="fbpx" src="https://www.facebook.com/tr?id=1244365213447452&ev=PageView&noscript=1" /></noscript>
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-16734252047"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());
gtag('config', 'AW-16734252047');
function gtag_report_conversion(url) {
  var callback = function () { if (typeof(url) !== 'undefined') { window.location = url; } };
  if (typeof gtag === 'function') {
    gtag('event', 'conversion', { 'send_to':'AW-16734252047/rVAHCPG1mu0ZEI_Ywas-','value':1.0,'currency':'BRL','transaction_id':'','event_callback':callback });
    return false;
  }
  return true;
}
function trackProductClick(url, name, price) {
  try {
    if (typeof fbq === 'function') { fbq('track', 'ViewContent', { content_name:name, currency:'BRL', value:price }); }
    if (typeof gtag === 'function') { gtag('event','select_item',{ item_list_name:'Home Produtos em destaque', items:[{item_name:name}] }); }
  } catch(e){}
  return gtag_report_conversion(url);
}
</script>

<main id="topo">

  <section class="xc-hero-carousel" aria-label="Banners XCross BR">
    <div class="xc-carousel" id="xc-carousel">
      <article class="xc-slide active" data-slide="0">
        <a href="/produtos/hand-grip-x-cross-lingua-de-gato-lona-de-borracha/?utm_source=site_html&amp;utm_medium=banner&amp;utm_campaign=home_xcross&amp;utm_content=lingua_de_gato" onclick="return trackProductClick(this.href, 'Lançamento Língua de Gato', 'banner')" aria-label="Comprar lançamento">
          <picture>
            <source media="(max-width: 760px)" srcset="https://xcrossbr.com.br/wp-content/uploads/2025/10/Banner-Lancamento-lingua-de-gato-tarja-preta-CELULAR.png">
            <img src="https://xcrossbr.com.br/wp-content/uploads/2025/10/Banner-Lancamento-lingua-de-gato-tarja-preta-2-scaled.png" alt="Lançamento Língua de Gato">
          </picture>
        </a>
      </article>

      <article class="xc-slide" data-slide="1">
        <a href="/produtos/hand-grip-x-cross-lingua-de-gato-lona-de-borracha/?utm_source=site_html&amp;utm_medium=banner&amp;utm_campaign=home_xcross&amp;utm_content=colocando_hand_grip" onclick="return trackProductClick(this.href, 'Hand Grip Língua de Gato', 'banner')" aria-label="Ver produto">
          <picture>
            <source media="(max-width: 760px)" srcset="https://xcrossbr.com.br/wp-content/uploads/2025/10/Banner-Colocando-Hand-Grip-CELULAR-2.png">
            <img src="https://xcrossbr.com.br/wp-content/uploads/2025/10/Banner-Colocando-Hand-Grip-1.png" alt="Hand Grip Língua de Gato">
          </picture>
        </a>
      </article>

      <article class="xc-slide" data-slide="2">
        <a href="/hand-grip/?utm_source=site_html&amp;utm_medium=banner&amp;utm_campaign=home_xcross&amp;utm_content=anatomic" onclick="return trackProductClick(this.href, 'Hand Grip Anatômic', 'banner')" aria-label="Ver Hand Grips">
          <picture>
            <source media="(max-width: 760px)" srcset="https://xcrossbr.com.br/wp-content/uploads/2025/10/Banner-Anatomic-CELULAR-1.png">
            <img src="https://xcrossbr.com.br/wp-content/uploads/2025/10/Banner-Anatomic-1.png" alt="Hand Grip Anatômic">
          </picture>
        </a>
      </article>

      <button class="xc-arrow prev" type="button" aria-label="Banner anterior"><svg viewBox="0 0 24 24"><path d="M15 18l-6-6 6-6"/></svg></button>
      <button class="xc-arrow next" type="button" aria-label="Próximo banner"><svg viewBox="0 0 24 24"><path d="M9 18l6-6-6-6"/></svg></button>

      <div class="xc-carousel-controls" aria-label="Controle dos banners">
        <button class="xc-dot active" type="button" aria-label="Banner 1"></button>
        <button class="xc-dot" type="button" aria-label="Banner 2"></button>
        <button class="xc-dot" type="button" aria-label="Banner 3"></button>
      </div>
    </div>
  </section>

  <div class="xc-trust-strip" id="beneficios">
    <div class="xc-container">
      <div class="xc-trust-grid">
        <div class="xc-trust-item"><div class="xc-trust-icon"><svg viewBox="0 0 24 24"><path d="M5 18h14M5 14h14"/><rect x="1" y="6" width="22" height="4" rx="1"/></svg></div><div><h3>Frete grátis</h3><p>Sul, Sudeste e Centro-Oeste acima de R$300. Nordeste acima de R$350. Norte acima de R$400.</p></div></div>
        <div class="xc-trust-item"><div class="xc-trust-icon"><svg viewBox="0 0 24 24"><rect x="1" y="4" width="22" height="16" rx="2"/><path d="M1 10h22"/></svg></div><div><h3>Até 3x sem juros</h3><p>Produtos selecionados com parcelamento sem juros pela Nuvemshop.</p></div></div>
        <div class="xc-trust-item"><div class="xc-trust-icon"><svg viewBox="0 0 24 24"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10Z"/></svg></div><div><h3>Compra segura</h3><p>Ambiente oficial XCross BR com pagamento seguro.</p></div></div>
        <div class="xc-trust-item"><div class="xc-trust-icon"><svg viewBox="0 0 24 24"><path d="M23 4v6h-6"/><path d="M20.49 15a9 9 0 1 1-2.12-9.36L23 10"/></svg></div><div><h3>Devolução garantida</h3><p>Compre com confiança e suporte direto da loja oficial.</p></div></div>
      </div>
    </div>
  </div>

  <section class="xc-section" id="produtos">
    <div class="xc-container">
      <div class="xc-section-head">
        <div>
          <div class="xc-kicker">Mais procurados</div>
          <h2 class="xc-section-title">Produtos em <span>destaque</span></h2>
          <p class="xc-section-sub">Itens destacados na Nuvemshop: hand grips, munhequeiras, joelheira e acessórios para treino funcional.</p>
        </div>
        <a class="xc-btn xc-btn-ghost" href="/produtos/?utm_source=site_html&amp;utm_medium=section_cta&amp;utm_campaign=home_xcross">Ver todos</a>
     </div>

{# Produtos em destaque puxados da Nuvemshop com visual XCross antigo -------- #}

{% set products = sections.primary.products | slice(0, 8) %}

{% if products %}

  <div class="xc-products xc-home-dynamic-products" id="xc-home-products">

    {% for product in products %}

      {% set product_category_name = product.category.name ? product.category.name : (product.default_category.name ? product.default_category.name : (product.categories[0].name ? product.categories[0].name : 'Novidades')) %}

      <article class="xc-product">

        <a class="xc-p-img"
           href="{{ product.url }}"
           onclick="return trackProductClick(this.href, '{{ product.name | escape('js') }}', '{{ product.price | money | escape('js') }}')">

          {% if product.compare_at_price %}
            <span class="xc-p-badge orange">Promo</span>
          {% else %}
            <span class="xc-p-badge">Novo</span>
          {% endif %}

          {% if product.featured_image %}
            <img src="{{ product.featured_image | product_image_url('large') }}"
                 alt="{{ product.name }}"
                 loading="lazy">
          {% endif %}

        </a>

        <div class="xc-p-info">

          <div class="xc-p-cat">{{ product_category_name }}</div>

          <h3 class="xc-p-name">{{ product.name }}</h3>

          {% if product.display_price %}
            <div class="xc-p-price">
              <strong>{{ product.price | money }}</strong>

              {% if product.compare_at_price %}
                <span>{{ product.compare_at_price | money }}</span>
              {% endif %}
            </div>
          {% endif %}

          <div class="xc-installments">Consulte opções no produto</div>

          <a class="xc-btn xc-btn-small xc-btn-primary"
             href="{{ product.url }}"
             onclick="return trackProductClick(this.href, '{{ product.name | escape('js') }}', '{{ product.price | money | escape('js') }}')">
            Ver opções
          </a>

        </div>

      </article>

    {% endfor %}

  </div>

{% else %}

  <div class="xc-empty-featured-products">
    <p>Nenhum produto em destaque foi selecionado ainda.</p>
  </div>

{% endif %}
   
  </section>

</main>

<script>
(function(){
  var slides = Array.prototype.slice.call(document.querySelectorAll('.xc-slide'));
  var dots = Array.prototype.slice.call(document.querySelectorAll('.xc-dot'));
  var prev = document.querySelector('.xc-arrow.prev');
  var next = document.querySelector('.xc-arrow.next');
  if(!slides.length) return;
  var current = 0;
  var timer;
  function show(index){
    current = (index + slides.length) % slides.length;
    slides.forEach(function(s,i){ s.classList.toggle('active', i === current); });
    dots.forEach(function(d,i){ d.classList.toggle('active', i === current); });
    clearInterval(timer);
    timer = setInterval(function(){ show(current + 1); }, 5200);
  }
  dots.forEach(function(dot,i){ dot.addEventListener('click',function(){ show(i); }); });
  if(prev) prev.addEventListener('click',function(){ show(current - 1); });
  if(next) next.addEventListener('click',function(){ show(current + 1); });
  timer = setInterval(function(){ show(current + 1); }, 5200);
})();
</script>
