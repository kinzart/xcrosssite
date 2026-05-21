{# /*============================================================================
 XCROSS BR — templates/home.tpl — V12 SAFE
 Home com carrossel, benefícios e produtos em destaque puxados da Nuvemshop.
 A ordem dos produtos da home passa a ser controlada no painel da Nuvemshop.
==============================================================================*/ #}

<style>
/* XCROSS V12 — ajustes da vitrine nativa da home */
.xcross-home-native-grid{
  align-items:stretch;
}

.xc-empty-featured-products{
  border:1px solid rgba(114,255,75,.18);
  background:rgba(255,255,255,.03);
  border-radius:18px;
  padding:28px;
  color:#dfe8da;
}

@media(max-width:760px){
  #xc-home-products > [class*="col-"],
  #xc-home-products .js-item-product{
    flex:0 0 50%;
    max-width:50%;
    width:50%;
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

      {# Produtos em destaque puxados da Nuvemshop ----------------------------- #}

      {% set section_columns_desktop = 4 %}
      {% set section_columns_mobile = 2 %}
      {% set featured_products = sections.primary.products | slice(0, 8) %}

      {% if featured_products %}

        <div class="row">
          <div class="col">

            <div class="js-product-table row row-grid xcross-home-native-grid" id="xc-home-products" data-store="home-featured-products">

              {% for product in featured_products %}
                {% include 'snipplets/grid/item.tpl' with {
                  image_priority_high: loop.index <= 2
                } %}
              {% endfor %}

            </div>

          </div>
        </div>

      {% else %}

        <div class="xc-empty-featured-products">
          <p>Nenhum produto em destaque foi selecionado ainda.</p>
        </div>

      {% endif %}

    </div>
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
