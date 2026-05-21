{# /*============================================================================
 XCROSS BR — templates/home.tpl — RESTORE SAFE V11
 Base estática segura: sem includes novos, sem variáveis novas e sem snipplets externos.
 Mantém carrossel, benefícios e produtos manuais.
==============================================================================*/ #}


<style>
/* XCROSS V12 — filtros locais da home */
.xc-home-filter-wrap{display:flex;align-items:center;justify-content:space-between;gap:16px;flex-wrap:wrap;margin:0 0 24px}
.xc-home-filters{display:flex;gap:10px;flex-wrap:wrap}
.xc-filter-pill{border:1px solid rgba(114,255,75,.25);background:rgba(255,255,255,.02);color:#dfe8da;border-radius:999px;padding:10px 18px;font-size:12px;font-weight:900;text-transform:uppercase;letter-spacing:.06em;cursor:pointer;transition:.25s ease}
.xc-filter-pill:hover,.xc-filter-pill.active{background:#18e016;border-color:#18e016;color:#061406}
.xc-home-filter-note{color:#a7afa1;font-size:13px}
.xc-product.xc-hidden{display:none!important}
@media(max-width:760px){.xc-home-filter-wrap{align-items:flex-start}.xc-filter-pill{padding:9px 14px;font-size:11px}.xc-home-filter-note{width:100%;font-size:12px}}
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
        <p class="xc-section-sub">Itens exibidos na home oficial da XCross BR: hand grips, munhequeiras, joelheira e acessórios para treino funcional.</p>
      </div>
      <a class="xc-btn xc-btn-ghost" href="/produtos/?utm_source=site_html&amp;utm_medium=section_cta&amp;utm_campaign=home_xcross">Ver todos</a>
    </div>

    <div class="xc-home-filter-wrap" aria-label="Filtros de categoria da home">

        <div class="xc-home-filters">
          <button class="xc-filter-pill active" type="button" data-xc-filter="all">Todos</button>
          <button class="xc-filter-pill" type="button" data-xc-filter="lingua-de-gato">Língua de gato</button>
          <button class="xc-filter-pill" type="button" data-xc-filter="joelheira">Joelheira</button>
          <button class="xc-filter-pill" type="button" data-xc-filter="anatomic">Anatômics</button>
          <button class="xc-filter-pill" type="button" data-xc-filter="munhequeira">Munhequeiras</button>
          <button class="xc-filter-pill" type="button" data-xc-filter="acessorios">Acessórios</button>
        </div>

        <div class="xc-home-filter-note" id="xc-home-filter-count">Mostrando produtos em destaque</div>

      </div>

    <div class="xc-products" id="xc-home-products">
      <article class="xc-product" data-xc-category="hand-grip lingua-de-gato novidades"><a class="xc-p-img" href="/produtos/hand-grip-x-cross-lingua-de-gato-lona-de-borracha/" onclick="return trackProductClick(this.href, 'HAND GRIP X-CROSS LÍNGUA DE GATO', 'R$ 249,90')"><span class="xc-p-badge">Novo</span><img src="https://xcrossbr.com.br/wp-content/uploads/2025/09/5-700x700.jpg" alt="HAND GRIP X-CROSS LÍNGUA DE GATO" loading="lazy"></a><div class="xc-p-info"><div class="xc-p-cat">Hand Grip · Língua de Gato · Novidades</div><h3 class="xc-p-name">HAND GRIP X-CROSS LÍNGUA DE GATO ( LONA DE BORRACHA )</h3><div class="xc-p-price"><strong>R$ 249,90</strong></div><div class="xc-installments">3x de R$83,30 sem juros</div><a class="xc-btn xc-btn-small xc-btn-primary" href="/produtos/hand-grip-x-cross-lingua-de-gato-lona-de-borracha/" onclick="return trackProductClick(this.href, 'HAND GRIP X-CROSS LÍNGUA DE GATO', 'R$ 249,90')">Ver opções</a></div></article>
      <article class="xc-product" data-xc-category="joelheira novidades"><a class="xc-p-img" href="/produtos/joelheira-7mm-x-cross-br/" onclick="return trackProductClick(this.href, 'Joelheira 7mm X-Cross Br', 'R$ 249,90')"><span class="xc-p-badge orange">Oferta</span><img src="https://xcrossbr.com.br/wp-content/uploads/2023/12/IMG-20220809-WA0011-1-700x700.jpg" alt="Joelheira 7mm X-Cross Br" loading="lazy"></a><div class="xc-p-info"><div class="xc-p-cat">Joelheira · Novidades</div><h3 class="xc-p-name">Joelheira 7mm X-Cross Br</h3><div class="xc-p-price"><strong>R$ 249,90</strong><s>R$ 289,90</s></div><div class="xc-installments">Consulte opções no produto</div><a class="xc-btn xc-btn-small xc-btn-primary" href="/produtos/joelheira-7mm-x-cross-br/" onclick="return trackProductClick(this.href, 'Joelheira 7mm X-Cross Br', 'R$ 249,90')">Ver opções</a></div></article>
      <article class="xc-product" data-xc-category="munhequeira novidades"><a class="xc-p-img" href="/produtos/munhequeira-elastica-x-cross-br-preto/" onclick="return trackProductClick(this.href, 'Munhequeira Elástica X-Cross br Preto', 'R$ 69,90')"><span class="xc-p-badge">Novo</span><img src="https://xcrossbr.com.br/wp-content/uploads/2025/09/ChatGPT-Image-16-de-out.-de-2025-13_36_12.png" alt="Munhequeira Elástica X-Cross br Preto" loading="lazy"></a><div class="xc-p-info"><div class="xc-p-cat">Munhequeira · Novidades</div><h3 class="xc-p-name">Munhequeira Elástica X-Cross br Preto</h3><div class="xc-p-price"><strong>R$ 69,90</strong></div><div class="xc-installments">Consulte opções no produto</div><a class="xc-btn xc-btn-small xc-btn-primary" href="/produtos/munhequeira-elastica-x-cross-br-preto/" onclick="return trackProductClick(this.href, 'Munhequeira Elástica X-Cross br Preto', 'R$ 69,90')">Ver opções</a></div></article>
      <article class="xc-product" data-xc-category="hand-grip anatomic novidades"><a class="xc-p-img" href="/produtos/hand-grip-anatomic-x-cross-br-azul/" onclick="return trackProductClick(this.href, 'HAND GRIP ANATÔMIC X-CROSS BR – AZUL', 'R$ 199,90')"><span class="xc-p-badge">Novo</span><img src="https://xcrossbr.com.br/wp-content/uploads/2025/09/4-1-430x430.jpg" alt="HAND GRIP ANATÔMIC X-CROSS BR – AZUL" loading="lazy"></a><div class="xc-p-info"><div class="xc-p-cat">Hand Grip · Anatômic · Novidades</div><h3 class="xc-p-name">HAND GRIP ANATÔMIC X-CROSS BR – AZUL</h3><div class="xc-p-price"><strong>R$ 199,90</strong></div><div class="xc-installments">Consulte opções no produto</div><a class="xc-btn xc-btn-small xc-btn-primary" href="/produtos/hand-grip-anatomic-x-cross-br-azul/" onclick="return trackProductClick(this.href, 'HAND GRIP ANATÔMIC X-CROSS BR – AZUL', 'R$ 199,90')">Ver opções</a></div></article>
      <article class="xc-product" data-xc-category="acessorios novidades"><a class="xc-p-img" href="/produtos/luva-com-polegar-de-neoprene/" onclick="return trackProductClick(this.href, 'Luva com polegar de neoprene', 'R$ 79,90')"><span class="xc-p-badge">Novo</span><img src="https://xcrossbr.com.br/wp-content/uploads/2024/05/Luva-Neoprene-Preta-5B-700x700.jpg" alt="Luva com polegar de neoprene" loading="lazy"></a><div class="xc-p-info"><div class="xc-p-cat">Acessórios · Novidades</div><h3 class="xc-p-name">Luva com polegar de neoprene</h3><div class="xc-p-price"><strong>R$ 79,90</strong></div><div class="xc-installments">Consulte opções no produto</div><a class="xc-btn xc-btn-small xc-btn-primary" href="/produtos/luva-com-polegar-de-neoprene/" onclick="return trackProductClick(this.href, 'Luva com polegar de neoprene', 'R$ 79,90')">Ver opções</a></div></article>
      <article class="xc-product" data-xc-category="hand-grip anatomic novidades outlet"><a class="xc-p-img" href="/produtos/hand-grip-anatomic-x-cross-br-laranja/" onclick="return trackProductClick(this.href, 'Hand Grip X-Cross br Laranja', 'R$ 199,90')"><span class="xc-p-badge orange">Outlet</span><img src="https://xcrossbr.com.br/wp-content/uploads/2025/09/3-1-430x430.jpg" alt="Hand Grip X-Cross br Laranja" loading="lazy"></a><div class="xc-p-info"><div class="xc-p-cat">Hand Grip · Anatômic · Novidades</div><h3 class="xc-p-name">HAND GRIP ANATÔMIC X-CROSS BR – LARANJA</h3><div class="xc-p-price"><strong>R$ 199,90</strong></div><div class="xc-installments">Consulte opções no produto</div><a class="xc-btn xc-btn-small xc-btn-primary" href="/produtos/hand-grip-anatomic-x-cross-br-laranja/" onclick="return trackProductClick(this.href, 'Hand Grip Anatômic Laranja', 'R$ 199,90')">Ver opções</a></div></article>
      <article class="xc-product" data-xc-category="acessorios novidades"><a class="xc-p-img" href="/produtos/pochete-xcross-br/" onclick="return trackProductClick(this.href, 'Pochete Xcross br', 'R$ 75,00')"><img src="https://xcrossbr.com.br/wp-content/uploads/2024/05/Pochete-sem-1-700x700.jpg" alt="Pochete Xcross br" loading="lazy"></a><div class="xc-p-info"><div class="xc-p-cat">Acessórios · Novidades</div><h3 class="xc-p-name">Pochete Xcross br</h3><div class="xc-p-price"><strong>R$ 75,00</strong></div><div class="xc-installments">Consulte opções no produto</div><a class="xc-btn xc-btn-small xc-btn-primary" href="/produtos/pochete-xcross-br/" onclick="return trackProductClick(this.href, 'Pochete Xcross br', 'R$ 75,00')">Ver opções</a></div></article>
      <article class="xc-product" data-xc-category="munhequeira novidades"><a class="xc-p-img" href="/produtos/munhequeira-canelada-x-cross-br/" onclick="return trackProductClick(this.href, 'Munhequeira Canelada Preta X-CROSS br', 'R$ 39,90')"><span class="xc-p-badge">Brinde acima de R$300</span><img src="https://xcrossbr.com.br/wp-content/uploads/2024/06/Design-sem-nome-430x430.jpg" alt="Munhequeira Canelada Preta X-CROSS br" loading="lazy"></a><div class="xc-p-info"><div class="xc-p-cat">Munhequeira · Novidades</div><h3 class="xc-p-name">Munhequeira Canelada Preta X-CROSS br</h3><div class="xc-p-price"><strong>R$ 39,90</strong></div><div class="xc-installments">3x de R$13,30 sem juros na Nuvemshop</div><a class="xc-btn xc-btn-small xc-btn-primary" href="/produtos/munhequeira-canelada-x-cross-br/" onclick="return trackProductClick(this.href, 'Munhequeira Canelada Preta X-CROSS br', 'R$ 39,90')">Ver opções</a></div></article>
    </div>
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


<script>
(function(){

  function normalize(value){
    return (value || '').toString().toLowerCase()
      .normalize('NFD').replace(/[\u0300-\u036f]/g,'');
  }

  function getHomeProductPriority(card){
    var cats = normalize(card.getAttribute('data-xc-category'));
    var text = cats + ' ' + normalize(card.textContent);

    if(text.indexOf('outlet') !== -1) return 999;
    if(text.indexOf('lingua-de-gato') !== -1 || (text.indexOf('lingua') !== -1 && text.indexOf('gato') !== -1)) return 1;
    if(text.indexOf('joelheira') !== -1) return 2;
    if(text.indexOf('anatomic') !== -1 || text.indexOf('anatomics') !== -1) return 3;
    if(text.indexOf('munhequeira') !== -1) return 4;
    if(text.indexOf('acessorios') !== -1 || text.indexOf('acessorio') !== -1 || text.indexOf('pochete') !== -1 || text.indexOf('luva') !== -1) return 5;

    return 50;
  }

  function prepareHomeProducts(){
    var container = document.getElementById('xc-home-products');
    if(!container) return;

    var cards = Array.prototype.slice.call(container.querySelectorAll('.xc-product'));

    cards = cards.filter(function(card){
      var text = normalize(card.getAttribute('data-xc-category') + ' ' + card.textContent);
      var isOutlet = text.indexOf('outlet') !== -1;

      if(isOutlet && card.parentNode){
        card.parentNode.removeChild(card);
      }

      return !isOutlet;
    });

    cards.sort(function(a, b){
      return getHomeProductPriority(a) - getHomeProductPriority(b);
    });

    cards.forEach(function(card, index){
      if(index < 8){
        container.appendChild(card);
      }else if(card.parentNode){
        card.parentNode.removeChild(card);
      }
    });
  }

  function updateHomeFilter(filter){
    var cards = Array.prototype.slice.call(document.querySelectorAll('#xc-home-products .xc-product'));
    var visible = 0;

    cards.forEach(function(card){
      var cats = normalize(card.getAttribute('data-xc-category'));
      var show = filter === 'all' || cats.indexOf(filter) !== -1;

      card.classList.toggle('xc-hidden', !show);

      if(show) visible++;
    });

    var counter = document.getElementById('xc-home-filter-count');

    if(counter){
      counter.textContent = visible + ' produto' + (visible === 1 ? '' : 's') + ' em destaque';
    }
  }

  document.addEventListener('DOMContentLoaded', function(){
    prepareHomeProducts();

    var buttons = Array.prototype.slice.call(document.querySelectorAll('[data-xc-filter]'));

    buttons.forEach(function(btn){
      btn.addEventListener('click', function(){
        buttons.forEach(function(b){ b.classList.remove('active'); });
        btn.classList.add('active');
        updateHomeFilter(normalize(btn.getAttribute('data-xc-filter')));
      });
    });

    updateHomeFilter('all');
  });

})();
</script>
