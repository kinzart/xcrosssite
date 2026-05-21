{# /*============================================================================
  XCROSS BR - CSS Unificado (xc- + xc2- mergeados)
  Incluído via {% include %} dentro de uma tag <style> em layouts/layout.tpl
  
  v4 — Unificação: removido o bloco xc2- do style-critical.scss
        e absorvido aqui tudo que era útil (product card fixes, image fixes).
==============================================================================*/ #}

@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Outfit:wght@300;400;500;600;700;800&display=swap');

:root{
  --bg:#070807;--bg-2:#0d0f0d;--surface:#121512;--surface-2:#171b17;--line:#232923;--line-2:#344034;
  --green:#18e016;--green-2:#72ff4b;--green-3:#0f9f10;--orange:#ff7a1a;--white:#fff;--text:#f3f6ef;--muted:#a7afa1;--muted-2:#707a6d;
  --font-display:'Bebas Neue', Impact, sans-serif;--font-body:'Outfit', Arial, sans-serif;--container:1280px;--radius:18px;--shadow:0 24px 90px rgba(0,0,0,.38);--ease:.28s cubic-bezier(.2,.7,.2,1);
}

/* ============================================
   Reset / base
============================================ */
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth;-webkit-font-smoothing:antialiased;text-rendering:optimizeLegibility}
body{font-family:var(--font-body) !important;background:var(--bg) !important;color:var(--text) !important;line-height:1.55;overflow-x:hidden}
a{text-decoration:none;color:inherit}
img{display:block;max-width:100%;height:auto}
button{font:inherit;border:0;background:none;color:inherit;cursor:pointer}
ul{list-style:none}
.xc-container{width:min(var(--container),calc(100% - 48px));margin-inline:auto}

/* ============================================
   Topbar marquee
============================================ */
.xc-topbar{height:38px;background:var(--green);color:#041604;display:flex;align-items:center;overflow:hidden;font-size:12px;font-weight:900;text-transform:uppercase;letter-spacing:.08em}
.xc-topbar-track{display:flex;white-space:nowrap;animation:xc-marquee 32s linear infinite}
.xc-topbar span{padding-inline:44px;display:flex;gap:10px;align-items:center}
.xc-topbar span:before{content:'✦';font-size:10px}
@keyframes xc-marquee{to{transform:translateX(-50%)}}

/* ============================================
   Header
============================================ */
.xc-header{position:sticky;top:0;z-index:99;background:rgba(7,8,7,.90);backdrop-filter:blur(18px);-webkit-backdrop-filter:blur(18px);border-bottom:1px solid var(--line)}
.xc-header-inner{height:74px;display:flex;align-items:center;justify-content:space-between;gap:24px}
.xc-logo img{height:38px;width:auto}
.xc-nav{display:flex;gap:28px;align-items:center}
.xc-nav a{font-size:13px;font-weight:800;text-transform:uppercase;letter-spacing:.05em;color:var(--muted);position:relative}
.xc-nav a:after{content:'';position:absolute;left:0;bottom:-7px;width:0;height:2px;background:var(--green);transition:var(--ease)}
.xc-nav a:hover{color:var(--white)}
.xc-nav a:hover:after{width:100%}
.xc-actions{display:flex;align-items:center;gap:14px}
.xc-icon-btn{width:40px;height:40px;border:1px solid var(--line);border-radius:999px;display:grid;place-items:center;color:var(--muted);transition:var(--ease);position:relative}
.xc-icon-btn:hover{border-color:var(--green);color:var(--green);background:rgba(24,224,22,.08)}
.xc-cart-badge{position:absolute;top:-4px;right:-4px;background:var(--green);color:#061406;border-radius:999px;min-width:18px;height:18px;font-size:10px;font-weight:900;display:grid;place-items:center;padding:0 4px}
.xc-hamb{display:none;gap:5px;flex-direction:column;width:40px;height:40px;align-items:center;justify-content:center}
.xc-hamb i{display:block;width:22px;height:2px;background:var(--white);border-radius:2px}

/* ============================================
   Carrossel hero
============================================ */
.xc-hero-carousel{position:relative;background:#030403;border-bottom:1px solid var(--line);overflow:hidden}
.xc-carousel{position:relative;width:100%;height:min(54vw,560px);min-height:360px}
.xc-slide{position:absolute;inset:0;opacity:0;visibility:hidden;transition:opacity .65s ease,visibility .65s ease}
.xc-slide.active{opacity:1;visibility:visible}
.xc-slide a,.xc-slide picture,.xc-slide img{width:100%;height:auto;display:block}
.xc-slide img{object-fit:cover}
.xc-carousel-controls{position:absolute;z-index:4;left:50%;bottom:22px;transform:translateX(-50%);display:flex;align-items:center;gap:10px;background:rgba(7,8,7,.55);border:1px solid rgba(255,255,255,.12);backdrop-filter:blur(12px);padding:8px 12px;border-radius:999px}
.xc-dot{width:10px;height:10px;border-radius:999px;background:rgba(255,255,255,.42);transition:var(--ease);border:0;padding:0}
.xc-dot.active{width:28px;background:var(--green)}
.xc-arrow{width:42px;height:42px;display:grid;place-items:center;border-radius:50%;background:rgba(7,8,7,.55);border:1px solid rgba(255,255,255,.12);position:absolute;z-index:4;top:50%;transform:translateY(-50%);transition:var(--ease);color:white}
.xc-arrow:hover{background:var(--green);color:#061406}
.xc-arrow.prev{left:18px}
.xc-arrow.next{right:18px}

/* ============================================
   Trust strip (benefícios sobre o carrossel)
============================================ */
.xc-trust-strip{position:relative;z-index:3;margin-top:-34px}
.xc-trust-grid{display:grid;grid-template-columns:repeat(4,1fr);background:var(--surface);border:1px solid var(--line);border-radius:22px;overflow:hidden;box-shadow:0 18px 60px rgba(0,0,0,.28)}
.xc-trust-item{padding:24px;display:flex;gap:14px;align-items:flex-start;border-right:1px solid var(--line)}
.xc-trust-item:last-child{border-right:0}
.xc-trust-icon{width:42px;height:42px;border-radius:14px;background:rgba(24,224,22,.1);color:var(--green);display:grid;place-items:center;flex:0 0 auto}
.xc-trust-item h3{font-family:var(--font-display);font-size:20px;letter-spacing:.04em;color:var(--text);font-weight:400}
.xc-trust-item p{font-size:13px;color:var(--muted);margin-top:2px}

/* ============================================
   Seção de produtos (home)
============================================ */
.xc-section{padding:86px 0}
.xc-section-head{display:flex;align-items:flex-end;justify-content:space-between;gap:24px;margin-bottom:36px}
.xc-kicker{font-size:12px;color:var(--green);font-weight:900;text-transform:uppercase;letter-spacing:.14em;margin-bottom:7px}
.xc-section-title{font-family:var(--font-display);font-size:clamp(38px,5vw,62px);line-height:.95;letter-spacing:.02em;color:var(--text);font-weight:400}
.xc-section-title span{color:var(--green)}
.xc-section-sub{color:var(--muted);max-width:620px;margin-top:10px}

/* Grid de produtos da home (hardcoded) */
.xc-products{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.xc-product{background:var(--surface);border:1px solid var(--line);border-radius:20px;overflow:hidden;transition:var(--ease);position:relative}
.xc-product:hover{transform:translateY(-5px);border-color:#3a493a;box-shadow:0 22px 70px rgba(0,0,0,.32)}
.xc-p-img{position:relative;aspect-ratio:1;background:#f6f6f4;overflow:hidden;display:grid;place-items:center}
.xc-p-img img{width:100%;height:100%;object-fit:contain;padding:10px;transition:.55s ease}
.xc-product:hover .xc-p-img img{transform:scale(1.04)}
.xc-p-badge{position:absolute;left:12px;top:12px;background:var(--green);color:#061406;border-radius:999px;padding:5px 10px;font-size:10px;font-weight:900;text-transform:uppercase;letter-spacing:.08em;z-index:2;max-width:calc(100% - 24px);white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.xc-p-badge.orange{background:var(--orange);color:white}
.xc-p-info{padding:16px;display:flex;flex-direction:column;min-height:214px}
.xc-p-cat{font-size:11px;font-weight:900;text-transform:uppercase;letter-spacing:.08em;color:var(--green);margin-bottom:7px}
.xc-p-name{font-size:15px;font-weight:800;line-height:1.25;min-height:42px;color:var(--text)}
.xc-p-price{margin-top:12px;display:flex;align-items:baseline;gap:8px;flex-wrap:wrap}
.xc-p-price strong{font-size:20px;color:var(--text)}
.xc-p-price s{font-size:13px;color:var(--muted-2)}
.xc-installments{font-size:12px;color:var(--muted);margin-top:4px;min-height:19px}

/* ============================================
   Botões
============================================ */
.xc-btn{display:inline-flex;align-items:center;justify-content:center;gap:9px;padding:15px 26px;border-radius:999px;font-size:13px;font-weight:900;text-transform:uppercase;letter-spacing:.07em;transition:var(--ease);text-decoration:none}
.xc-btn-primary{background:var(--green);color:#061406}
.xc-btn-primary:hover{transform:translateY(-2px);box-shadow:0 14px 42px rgba(24,224,22,.28);color:#061406}
.xc-btn-ghost{border:1px solid var(--line-2);color:var(--text);background:rgba(255,255,255,.03)}
.xc-btn-ghost:hover{border-color:var(--green);color:var(--green)}
.xc-btn-small{padding:11px 18px;margin-top:auto;font-size:11px}

/* ============================================
   Footer
============================================ */
.xc-footer{background:#070807;border-top:1px solid var(--line);padding:52px 0 30px}
.xc-footer-grid{display:grid;grid-template-columns:1.3fr repeat(3,1fr);gap:42px;margin-bottom:36px}
.xc-footer img{height:34px;margin-bottom:15px}
.xc-footer p,.xc-footer a{color:var(--muted);font-size:13px}
.xc-footer h4{font-family:var(--font-display);font-size:20px;letter-spacing:.05em;margin-bottom:16px;color:var(--text);font-weight:400}
.xc-footer li{margin-bottom:10px}
.xc-footer a:hover{color:var(--green)}
.xc-footer-bottom{border-top:1px solid var(--line);padding-top:22px;display:flex;justify-content:space-between;gap:14px;flex-wrap:wrap}
.xc-payments{display:flex;gap:8px;flex-wrap:wrap}
.xc-payments span{border:1px solid var(--line);border-radius:7px;padding:4px 9px;color:var(--muted);font-size:11px}

/* ============================================
   WhatsApp flutuante
============================================ */
.xc-wa{position:fixed;right:22px;bottom:22px;z-index:100;width:58px;height:58px;border-radius:50%;background:#25d366;display:grid;place-items:center;box-shadow:0 14px 38px rgba(37,211,102,.34);transition:var(--ease)}
.xc-wa:hover{transform:scale(1.07)}

/* ============================================
   SVGs default
============================================ */
.xc-header svg,.xc-trust-icon svg,.xc-arrow svg{width:20px;height:20px;stroke:currentColor;stroke-width:1.8;fill:none;stroke-linecap:round;stroke-linejoin:round}

/* ============================================
   Responsive — home
============================================ */
@media(max-width:1100px){
  .xc-nav{display:none}
  .xc-hamb{display:flex}
  .xc-products{grid-template-columns:repeat(3,1fr)}
  .xc-trust-grid{grid-template-columns:repeat(2,1fr)}
  .xc-trust-item:nth-child(2){border-right:0}
  .xc-footer-grid{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:760px){
  .xc-container{width:min(100% - 32px,var(--container))}
  .xc-actions .xc-icon-btn{display:none}
  .xc-carousel{height:100vw;min-height:0;max-height:none}
  .xc-slide img{object-fit:cover}
  .xc-arrow{display:none}
  .xc-carousel-controls{bottom:14px}
  .xc-trust-strip{margin-top:-20px}
  .xc-trust-grid{grid-template-columns:1fr;border-radius:18px}
  .xc-trust-item{border-right:0;border-bottom:1px solid var(--line);padding:20px}
  .xc-products{grid-template-columns:repeat(2,1fr);gap:12px}
  .xc-p-info{padding:12px;min-height:205px}
  .xc-p-name{font-size:13px}
  .xc-p-price strong{font-size:17px}
  .xc-section{padding:62px 0}
  .xc-section-head{align-items:flex-start;flex-direction:column}
  .xc-footer-grid{grid-template-columns:1fr}
  .xc-topbar{height:34px}
  .xc-topbar span{padding-inline:28px;font-size:11px}
}
@media(max-width:460px){
  #xc-home-products{
    grid-template-columns:repeat(2,1fr);
    gap:10px;
  }

  #xc-home-products .xc-p-info{
    padding:10px;
    min-height:190px;
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

/* ======================================================================
   PÁGINAS INTERNAS — Override do tema Baires
   (categoria, produto, carrinho, conta, busca, contato)
   Inclui fixes absorvidos do bloco xc2- que estava no style-critical.scss
====================================================================== */

/* Override de tokens nativos do tema Baires */
:root{
  --main-background:#070807;
  --main-foreground:#f3f6ef;
  --accent-color:#18e016;
  --button-background:#18e016;
  --button-foreground:#061406;
  --label-background:#18e016;
  --label-foreground:#061406;
  --header-background:#070807;
  --header-foreground:#f3f6ef;
  --footer-background:#070807;
  --footer-foreground:#a7afa1;
}

/* Esconde header/footer/whatsapp nativos do Baires — usamos os nossos */
.head-main,
.js-head-main,
.section-adbar,
.footer:not(.xc-footer),
.js-footer:not(.xc-footer),
.js-whatsapp-chat:not(.xc-wa){
  display:none !important;
}

/* Tipografia global */
.page-header h1,
.page-header h2,
.h1-huge,.h1-huge-md,.h2-huge,.h2-huge-md{
  font-family:'Bebas Neue', sans-serif !important;
  color:var(--text);
  letter-spacing:.02em;
}

/* ---- Cards de produto nativos Baires (categorias, busca, relacionados) ---- */
.js-item-product,
.item-product{
  background:var(--surface) !important;
  border:1px solid var(--line) !important;
  border-radius:20px !important;
  overflow:hidden !important;
  transition:transform .25s ease, border-color .25s ease, box-shadow .25s ease !important;
}
.js-item-product:hover,
.item-product:hover{
  transform:translateY(-5px) !important;
  border-color:rgba(24,224,22,.45) !important;
  box-shadow:0 20px 60px rgba(0,0,0,.28) !important;
}

/* Imagem do card */
/* ---- Imagem do card — ZOOM CENTRALIZADO CORRETO ---- */
.item-image{
  position:relative !important;
  display:block !important;
  aspect-ratio:1/1 !important;
  background:#fff !important;
  overflow:hidden !important;
}

/* Container interno da imagem */
.item-image .js-item-image-padding,
.js-item-image-padding.position-relative.d-block{
  position:relative !important;
  display:block !important;
  width:100% !important;
  height:100% !important;
  padding:0 !important;
  overflow:hidden !important;
}

/* Mantém a imagem realmente centralizada */
.item-image img,
.item-image .img-absolute,
.item-image .img-absolute-centered,
.item-image .img-absolute-centered-vertically,
.item-image .js-item-image{
  position:absolute !important;
  top:50% !important;
  left:50% !important;
  right:auto !important;
  bottom:auto !important;

  width:100% !important;
  height:100% !important;
  max-width:none !important;
  max-height:none !important;

  object-fit:contain !important;
  object-position:center center !important;
  padding:14px !important;

  transform:translate(-50%, -50%) scale(1) !important;
  transform-origin:center center !important;
  transition:transform .5s ease !important;
}

/* Zoom sem sair do centro */
.js-item-product:hover .item-image img,
.item-product:hover .item-image img{
  transform:translate(-50%, -50%) scale(1.08) !important;
}

/* Esconde imagem secundária/hover */
.item-image img:not(:first-of-type),
.item-image .item-image-secondary,
.item-image .js-item-image-secondary,
.item-image .product-item-image-hover{
  display:none !important;
}

/* Impede troca pra secundária */
.product-item-secondary-images-loaded:not(.product-item-secondary-images-disabled):hover .item-image-featured{
  opacity:1 !important;
}



/* Info do card */
.item-description,
.item-info,
.item-details{
  padding:16px 16px 18px !important;
  background:var(--surface) !important;
}

/* Nome do produto */
.item-name,
.item-name a{
  display:-webkit-box !important;
  min-height:40px !important;
  margin:0 0 10px !important;
  overflow:hidden !important;
  color:var(--text) !important;
  font-family:'Outfit', Arial, sans-serif !important;
  font-size:14px !important;
  font-weight:800 !important;
  line-height:1.22 !important;
  letter-spacing:.01em !important;
  text-transform:uppercase !important;
  -webkit-line-clamp:2 !important;
  -webkit-box-orient:vertical !important;
}
.item-name a:hover{color:var(--green) !important}

/* Preço */
.item-price,
.price-container,
.js-price-display{
  margin:0 !important;
  color:var(--white) !important;
  font-family:'Outfit', Arial, sans-serif !important;
  font-size:18px !important;
  font-weight:900 !important;
  line-height:1.1 !important;
}
.item-price-compare,
.compare-price{
  color:var(--muted-2) !important;
  text-decoration:line-through !important;
}

/* Labels */
.label-discount,
.label-default,
.label-stock,
.label-free-shipping{
  background:var(--green) !important;
  color:#061406 !important;
  border:none !important;
  font-weight:900 !important;
  letter-spacing:.06em !important;
  text-transform:uppercase !important;
  border-radius:999px !important;
}

/* ---- Botões nativos Baires ---- */
.btn-primary,
.js-add-to-cart-button,
button.btn-primary,
input[type="submit"].btn-primary{
  background:var(--green) !important;
  border-color:var(--green) !important;
  color:#061406 !important;
  border-radius:999px !important;
  font-weight:900 !important;
  text-transform:uppercase !important;
  letter-spacing:.06em !important;
  padding:14px 26px !important;
  transition:background .25s ease, box-shadow .25s ease !important;
}
.btn-primary:hover{
  background:var(--green-2) !important;
  border-color:var(--green-2) !important;
  color:#061406 !important;
  box-shadow:0 14px 42px rgba(24,224,22,.28) !important;
}

/* ---- Formulários ---- */
input[type="text"],input[type="email"],input[type="password"],input[type="tel"],input[type="search"],input[type="number"],textarea,select{
  background:var(--surface) !important;
  border:1px solid var(--line-2) !important;
  color:var(--text) !important;
  border-radius:8px !important;
  font-family:'Outfit', sans-serif !important;
}
input:focus,textarea:focus,select:focus{
  border-color:var(--green) !important;
  outline:none !important;
  box-shadow:0 0 0 3px rgba(24,224,22,.18) !important;
}
input::placeholder,textarea::placeholder{color:var(--muted) !important}

/* ---- Scrollbar + Selection ---- */
::-webkit-scrollbar{width:10px;height:10px}
::-webkit-scrollbar-track{background:var(--bg)}
::-webkit-scrollbar-thumb{background:var(--line-2);border-radius:5px}
::-webkit-scrollbar-thumb:hover{background:var(--green)}
::selection{background:var(--green);color:#061406}

/* ---- Responsive páginas internas ---- */
@media(max-width:768px){
  .item-name,.item-name a{font-size:12px !important;min-height:32px !important}
  .item-price,.price-container{font-size:15px !important}
}
/* ---- Cart itens ---- */
.cart-item-image{
        border-radius: 10px;
}
.summary-img-thumb {
    border-radius: 8px !important;
}
.product-item-secondary-images-loaded:not(.product-item-secondary-images-disabled):hover .item-image-featured{
opacity:1 !important}