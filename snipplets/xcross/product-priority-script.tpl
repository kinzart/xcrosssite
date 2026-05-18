{# ============================================================================
  XCROSS BR — fallback JS de prioridade visual — v10
  Serve como reforço caso algum bloco nativo seja reordenado via AJAX/infinite scroll.
  Não altera dados da Nuvemshop; apenas reorganiza cards já renderizados na tela.
============================================================================ #}
<script>
(function(){
  function normalize(text){
    return (text || '')
      .toString()
      .normalize('NFD')
      .replace(/[\u0300-\u036f]/g, '')
      .toLowerCase();
  }

  function priorityOf(card){
    var text = normalize(card.innerText || card.textContent || '');
    if (text.indexOf('lingua') !== -1 && text.indexOf('gato') !== -1) return 1;
    if (text.indexOf('joelheira') !== -1) return 2;
    return 10;
  }

  function sortGrid(grid){
    if (!grid || grid.dataset.xcPriorityDone === '1') return;
    var cards = Array.prototype.slice.call(grid.children).filter(function(el){
      return el.nodeType === 1;
    });
    if (cards.length < 2) return;

    cards.sort(function(a, b){
      return priorityOf(a) - priorityOf(b);
    });

    cards.forEach(function(card){ grid.appendChild(card); });
    grid.dataset.xcPriorityDone = '1';
  }

  function run(){
    document.querySelectorAll('.js-product-table, .xc-native-products .row-grid').forEach(sortGrid);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', run);
  } else {
    run();
  }

  var observer = new MutationObserver(function(){
    document.querySelectorAll('.js-product-table, .xc-native-products .row-grid').forEach(function(grid){
      grid.dataset.xcPriorityDone = '0';
    });
    run();
  });

  if (document.body) {
    observer.observe(document.body, { childList: true, subtree: true });
  }
})();
</script>
