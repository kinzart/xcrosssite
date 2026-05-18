{# /*============================================================================
  XCROSS BR - Layout v4 CSS (cópia exata do HTML estático)
  Incluído via {% include %} dentro de uma tag <style> em layouts/layout.tpl
==============================================================================*/ #}

@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Outfit:wght@300;400;500;600;700;800&display=swap');

:root{
  --bg:#070807;--bg-2:#0d0f0d;--surface:#121512;--surface-2:#171b17;--line:#232923;--line-2:#344034;
  --green:#18e016;--green-2:#72ff4b;--orange:#ff7a1a;--white:#fff;--text:#f3f6ef;--muted:#a7afa1;--muted-2:#707a6d;
  --font-display:'Bebas Neue', Impact, sans-serif;--font-body:'Outfit', Arial, sans-serif;--container:1280px;--radius:18px;--shadow:0 24px 90px rgba(0,0,0,.38);--ease:.28s cubic-bezier(.2,.7,.2,1);
}

/* Reset / base ------------------------------------------------------------ */
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth;-webkit-font-smoothing:antialiased;text-rendering:optimizeLegibility}
body{font-family:var(--font-body) !important;background:var(--bg) !important;color:var(--text) !important;line-height:1.55;overflow-x:hidden}
a{text-decoration:none;color:inherit}
img{display:block;max-width:100%;height:auto}
button{font:inherit;border:0;background:none;color:inherit;cursor:pointer}
ul{list-style:none}
.xc-container{width:min(var(--container),calc(100% - 48px));margin-inline:auto}

/* Topbar marquee --------------------------------------------------------- */
.xc-topbar{height:38px;background:var(--green);color:#041604;display:flex;align-items:center;overflow:hidden;font-size:12px;font-weight:900;text-transform:uppercase;letter-spacing:.08em}
.xc-topbar-track{display:flex;white-space:nowrap;animation:xc-marquee 32s linear infinite}
.xc-topbar span{padding-inline:44px;display:flex;gap:10px;align-items:center}
.xc-topbar span:before{content:'✦';font-size:10px}
@keyframes xc-marquee{to{transform:translateX(-50%)}}

/* Header ----------------------------------------------------------------- */
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

/* Carrossel hero --------------------------------------------------------- */
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
@media (max-width: 1400px) and (min-width: 980px) {
  section.xc-hero-carousel {
    height: 420px !important;
  }
}


/* Strip de benefícios sobreposto ao carrossel --------------------------- */
.xc-trust-strip{position:relative;z-index:3;margin-top:-34px}
.xc-trust-grid{display:grid;grid-template-columns:repeat(4,1fr);background:var(--surface);border:1px solid var(--line);border-radius:22px;overflow:hidden;box-shadow:0 18px 60px rgba(0,0,0,.28)}
.xc-trust-item{padding:24px;display:flex;gap:14px;align-items:flex-start;border-right:1px solid var(--line)}
.xc-trust-item:last-child{border-right:0}
.xc-trust-icon{width:42px;height:42px;border-radius:14px;background:rgba(24,224,22,.1);color:var(--green);display:grid;place-items:center;flex:0 0 auto}
.xc-trust-item h3{font-family:var(--font-display);font-size:20px;letter-spacing:.04em;color:var(--text);font-weight:400}
.xc-trust-item p{font-size:13px;color:var(--muted);margin-top:2px}

/* Section produtos ------------------------------------------------------- */
.xc-section{padding:86px 0}
.xc-section-head{display:flex;align-items:flex-end;justify-content:space-between;gap:24px;margin-bottom:36px}
.xc-kicker{font-size:12px;color:var(--green);font-weight:900;text-transform:uppercase;letter-spacing:.14em;margin-bottom:7px}
.xc-section-title{font-family:var(--font-display);font-size:clamp(38px,5vw,62px);line-height:.95;letter-spacing:.02em;color:var(--text);font-weight:400}
.xc-section-title span{color:var(--green)}
.xc-section-sub{color:var(--muted);max-width:620px;margin-top:10px}
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

/* Botões ----------------------------------------------------------------- */
.xc-btn{display:inline-flex;align-items:center;justify-content:center;gap:9px;padding:15px 26px;border-radius:999px;font-size:13px;font-weight:900;text-transform:uppercase;letter-spacing:.07em;transition:var(--ease);text-decoration:none}
.xc-btn-primary{background:var(--green);color:#061406}
.xc-btn-primary:hover{transform:translateY(-2px);box-shadow:0 14px 42px rgba(24,224,22,.28);color:#061406}
.xc-btn-ghost{border:1px solid var(--line-2);color:var(--text);background:rgba(255,255,255,.03)}
.xc-btn-ghost:hover{border-color:var(--green);color:var(--green)}
.xc-btn-small{padding:11px 18px;margin-top:auto;font-size:11px}

/* Footer ----------------------------------------------------------------- */
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

/* Botão flutuante WhatsApp ---------------------------------------------- */
.xc-wa{position:fixed;right:22px;bottom:22px;z-index:100;width:58px;height:58px;border-radius:50%;background:#25d366;display:grid;place-items:center;box-shadow:0 14px 38px rgba(37,211,102,.34);transition:var(--ease)}
.xc-wa:hover{transform:scale(1.07)}

/* SVGs default ----------------------------------------------------------- */
.xc-header svg,.xc-trust-icon svg,.xc-arrow svg{width:20px;height:20px;stroke:currentColor;stroke-width:1.8;fill:none;stroke-linecap:round;stroke-linejoin:round}

/* Mobile breakpoints ----------------------------------------------------- */
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
  .xc-products{grid-template-columns:1fr}
  .xc-p-info{min-height:auto}
}

/* ====================================================================== */
/* Ajustes em páginas internas da Nuvemshop (categoria, produto, conta) */
/* ====================================================================== */

/* Override de tokens nativos do tema base (Baires) */
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

/* Esconde header/footer nativos do tema Baires — usamos os nossos */
.head-main,
.js-head-main,
.section-adbar,
.footer:not(.xc-footer),
.js-footer:not(.xc-footer),
.js-whatsapp-chat:not(.xc-wa){
  display:none !important;
}

/* Páginas internas: títulos, cards de produto, botões */
.page-header h1,
.page-header h2,
.h1-huge,.h1-huge-md,.h2-huge,.h2-huge-md{
  font-family:'Bebas Neue', sans-serif !important;
  color:var(--text);
  letter-spacing:.02em;
}

.js-item-product,.item-product{
  background:var(--surface);
  border:1px solid var(--line);
  border-radius:20px;
  overflow:hidden;
}
.js-item-product:hover,.item-product:hover{
  border-color:#3a493a;
  box-shadow:0 22px 70px rgba(0,0,0,.32);
}
.item-name a,.js-item-name a{color:var(--text) !important;font-weight:700}
.item-name a:hover,.js-item-name a:hover{color:var(--green) !important}
.item-price,.js-price-display{color:var(--text) !important;font-weight:800}
.item-price-compare,.compare-price{color:var(--muted-2) !important;text-decoration:line-through}

.btn-primary,.js-add-to-cart-button,button.btn-primary,input[type="submit"].btn-primary{
  background:var(--green) !important;
  border-color:var(--green) !important;
  color:#061406 !important;
  border-radius:999px !important;
  font-weight:900 !important;
  text-transform:uppercase !important;
  letter-spacing:.06em !important;
  padding:14px 26px !important;
}
.btn-primary:hover{background:var(--green-2) !important;border-color:var(--green-2) !important;color:#061406 !important}

input[type="text"],input[type="email"],input[type="password"],input[type="tel"],input[type="search"],textarea,select{
  background:var(--surface) !important;
  border:1px solid var(--line-2) !important;
  color:var(--text) !important;
  border-radius:8px !important;
}
input:focus,textarea:focus,select:focus{
  border-color:var(--green) !important;
  outline:none !important;
  box-shadow:0 0 0 3px rgba(24,224,22,.18) !important;
}

::-webkit-scrollbar{width:10px;height:10px}
::-webkit-scrollbar-track{background:var(--bg)}
::-webkit-scrollbar-thumb{background:var(--line-2);border-radius:5px}
::-webkit-scrollbar-thumb:hover{background:var(--green)}
::selection{background:var(--green);color:#061406}
