<script>
(function(){
  function score(card){
    var text = (card.textContent || '').toLowerCase();
    if (text.indexOf('língua de gato') !== -1 || text.indexOf('lingua de gato') !== -1) return 1;
    if (text.indexOf('joelheira') !== -1) return 2;
    return 10;
  }
  function reorder(container){
    var cards = Array.prototype.slice.call(container.children).filter(function(el){
      return el.nodeType === 1 && (el.querySelector('a') || el.className);
    });
    if(cards.length < 2) return;
    cards.sort(function(a,b){ return score(a) - score(b); });
    cards.forEach(function(card){ container.appendChild(card); });
  }
  document.addEventListener('DOMContentLoaded', function(){
    ['.js-product-table', '.product-table', '.grid-row', '.row-grid', '.xc-products'].forEach(function(selector){
      document.querySelectorAll(selector).forEach(reorder);
    });
  });
})();
</script>
