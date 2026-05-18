{# ============================================================================
  XCROSS BR — estilos complementares v10
  Pode ser incluído em home.tpl e category.tpl dentro de <style>.
============================================================================ #}
:root{
  --xc-bg:#070807;
  --xc-bg-2:#0d0f0d;
  --xc-surface:#121512;
  --xc-surface-2:#171b17;
  --xc-line:#232923;
  --xc-line-2:#344034;
  --xc-green:#18e016;
  --xc-green-2:#72ff4b;
  --xc-orange:#ff7a1a;
  --xc-white:#fff;
  --xc-text:#f3f6ef;
  --xc-muted:#a7afa1;
  --xc-muted-2:#707a6d;
  --xc-radius:20px;
  --xc-container:1280px;
}
.xc-container{width:min(var(--xc-container),calc(100% - 48px));margin-inline:auto}
.xc-section{padding:86px 0}
.xc-kicker{display:block;font-size:12px;color:var(--xc-green);font-weight:900;text-transform:uppercase;letter-spacing:.14em;margin-bottom:7px}
.xc-section-head{display:flex;align-items:flex-end;justify-content:space-between;gap:24px;margin-bottom:36px}
.xc-section-head h2{font-size:clamp(38px,5vw,62px);line-height:.95;letter-spacing:.02em;text-transform:uppercase;margin:0;color:var(--xc-text)}
.xc-section-head h2 strong{color:var(--xc-green);font-weight:inherit}.xc-section-head p{color:var(--xc-muted);max-width:620px;margin-top:10px}
.xc-btn{display:inline-flex;align-items:center;justify-content:center;gap:9px;padding:15px 26px;border-radius:999px;font-size:13px;font-weight:900;text-transform:uppercase;letter-spacing:.07em;transition:.28s cubic-bezier(.2,.7,.2,1);background:var(--xc-green);color:#061406!important}.xc-btn:hover{transform:translateY(-2px);text-decoration:none}

/* Home hero carousel */
.xc-home{background:var(--xc-bg);color:var(--xc-text)}
.xc-hero-carousel{position:relative;background:var(--xc-bg);overflow:hidden;border-bottom:1px solid var(--xc-line);min-height:clamp(420px,56vw,720px)}
.xc-hero-track{position:relative;min-height:clamp(420px,56vw,720px);background:#050705}.xc-hero-slide{position:absolute;inset:0;opacity:0;pointer-events:none;transition:opacity .6s ease}.xc-hero-slide.is-active{opacity:1;pointer-events:auto}.xc-hero-slide a,.xc-hero-slide picture,.xc-hero-slide img{display:block;width:100%;height:100%}.xc-hero-slide img{object-fit:cover}.xc-hero-arrow{position:absolute;z-index:5;top:50%;transform:translateY(-50%);width:46px;height:46px;border-radius:999px;border:1px solid rgba(255,255,255,.22);background:rgba(7,8,7,.55);color:#fff;display:grid;place-items:center;font-size:34px;line-height:1}.xc-hero-prev{left:22px}.xc-hero-next{right:22px}.xc-hero-dots{position:absolute;z-index:5;left:50%;bottom:24px;transform:translateX(-50%);display:flex;gap:10px}.xc-hero-dots button{width:10px;height:10px;border-radius:999px;border:1px solid rgba(255,255,255,.55);background:transparent;padding:0}.xc-hero-dots button.is-active{width:30px;background:var(--xc-green);border-color:var(--xc-green)}

/* Benefits */
.xc-trust-section{position:relative;z-index:3;margin-top:-34px;padding-bottom:36px}.xc-trust-grid{display:grid;grid-template-columns:repeat(4,1fr);background:var(--xc-surface);border:1px solid var(--xc-line);border-radius:22px;overflow:hidden;box-shadow:0 18px 60px rgba(0,0,0,.28)}.xc-trust-item{padding:24px;display:flex;gap:14px;align-items:flex-start;border-right:1px solid var(--xc-line)}.xc-trust-item:last-child{border-right:0}.xc-trust-icon{width:42px;height:42px;border-radius:14px;background:rgba(24,224,22,.1);color:var(--xc-green);display:grid;place-items:center;flex:0 0 auto;font-weight:900}.xc-trust-item h3{font-size:20px;letter-spacing:.04em;text-transform:uppercase;margin:0;color:var(--xc-text)}.xc-trust-item p{font-size:13px;color:var(--xc-muted);margin:2px 0 0}

/* Category pills */
.xc-category-pills{display:flex;gap:10px;flex-wrap:wrap;margin:22px 0 0}.xc-category-pill{padding:10px 16px;border:1px solid var(--xc-line-2);border-radius:999px;color:var(--xc-muted)!important;font-size:12px;font-weight:900;text-transform:uppercase;letter-spacing:.06em;background:rgba(255,255,255,.03)}.xc-category-pill:hover,.xc-category-pill.active{background:var(--xc-green);border-color:var(--xc-green);color:#061406!important;text-decoration:none}

/* Native product grid visual upgrade */
.xc-native-products .row-grid,.template-category .js-product-table.row-grid,.xc-shop-page .js-product-table.row-grid{row-gap:22px}.xc-native-products .item,.template-category .js-product-table .item,.xc-shop-page .js-product-table .item{background:var(--xc-surface);border:1px solid var(--xc-line);border-radius:20px;overflow:hidden;transition:.28s cubic-bezier(.2,.7,.2,1);height:100%}.xc-native-products .item:hover,.template-category .js-product-table .item:hover,.xc-shop-page .js-product-table .item:hover{transform:translateY(-5px);border-color:#3a493a;box-shadow:0 22px 70px rgba(0,0,0,.32)}.xc-native-products .item-image,.template-category .js-product-table .item-image,.xc-shop-page .js-product-table .item-image{background:#0c0e0c}.xc-native-products .item-image img,.template-category .js-product-table .item-image img,.xc-shop-page .js-product-table .item-image img{object-fit:contain!important}.xc-native-products .item-name,.template-category .js-product-table .item-name,.xc-shop-page .js-product-table .item-name{font-weight:800;line-height:1.25;text-transform:none}.xc-native-products .item-price,.template-category .js-product-table .item-price,.xc-shop-page .js-product-table .item-price{font-weight:900;color:var(--xc-text)}

/* Shop/category page */
.xc-shop-page{background:var(--xc-bg);color:var(--xc-text);padding:44px 0 86px}.xc-shop-hero{border-bottom:1px solid var(--xc-line);padding:0 0 26px;margin-bottom:26px}.xc-shop-hero .xc-container{border:1px solid var(--xc-line);border-radius:28px;background:radial-gradient(circle at 85% 20%,rgba(24,224,22,.18),transparent 34%),linear-gradient(135deg,#0f130f,#070807);padding:34px}.xc-shop-hero h1{font-size:clamp(40px,5vw,70px);line-height:.95;text-transform:uppercase;margin:8px 0 8px;color:var(--xc-text)}.xc-shop-hero p{max-width:720px;color:var(--xc-muted);margin:0}.xc-breadcrumbs,.xc-breadcrumbs a{color:var(--xc-muted)!important}.xc-shop-layout{background:var(--xc-surface);border:1px solid var(--xc-line);border-radius:28px;padding:22px}.xc-shop-layout .filters-sidebar{background:#0d100d;border:1px solid var(--xc-line);border-radius:18px;padding:20px;margin-right:18px}.xc-shop-layout .filters-sidebar .h2,.xc-shop-layout .filters-sidebar h2{color:var(--xc-text)}.xc-shop-layout .filters-sidebar a{color:var(--xc-muted)}.xc-shop-layout .filters-sidebar a:hover{color:var(--xc-green)}.category-controls{background:transparent;border:0}.category-controls-container{width:min(var(--xc-container),calc(100% - 48px));margin-inline:auto}.category-controls-row{justify-content:flex-end}.category-controls .btn-link,.category-controls a{color:var(--xc-green)!important;font-weight:900;text-transform:uppercase;letter-spacing:.06em}.xc-empty-products{background:var(--xc-surface);border:1px solid var(--xc-line);border-radius:20px;padding:28px;color:var(--xc-muted)}.xc-empty-products h3{color:var(--xc-text);margin-top:0}
@media(max-width:1100px){.xc-trust-grid{grid-template-columns:repeat(2,1fr)}.xc-trust-item:nth-child(2){border-right:0}.xc-shop-layout{padding:16px}.xc-shop-layout .filters-sidebar{margin-right:0}}
@media(max-width:760px){.xc-container{width:min(100% - 32px,var(--xc-container))}.xc-hero-carousel,.xc-hero-track{min-height:520px}.xc-hero-arrow{display:none}.xc-trust-section{margin-top:-26px}.xc-trust-grid{grid-template-columns:1fr;border-radius:18px}.xc-trust-item{border-right:0;border-bottom:1px solid var(--xc-line);padding:20px}.xc-trust-item:last-child{border-bottom:0}.xc-section{padding:62px 0}.xc-section-head{align-items:flex-start;flex-direction:column}.xc-btn{width:100%}.xc-shop-hero .xc-container{padding:26px}.xc-category-pills{overflow:auto;flex-wrap:nowrap;padding-bottom:4px}.xc-category-pill{white-space:nowrap}.xc-shop-layout{border-radius:20px}}
