{# ============================================================================
  XCROSS BR — categorias em pills para loja/categoria — v10
============================================================================ #}
<nav class="xc-category-pills" aria-label="Categorias XCross BR">
  <a href="/produtos/" class="xc-category-pill{% if template == 'category' and category.name == 'Produtos' %} active{% endif %}">Todos</a>
  <a href="/hand-grip/" class="xc-category-pill{% if category.name == 'HAND GRIP' %} active{% endif %}">Hand Grip</a>
  <a href="/hand-grip/lingua-de-gato/" class="xc-category-pill{% if 'GATO' in category.name %} active{% endif %}">Língua de Gato</a>
  <a href="/hand-grip/anatomic/" class="xc-category-pill{% if 'Anatômic' in category.name or 'ANATÔMIC' in category.name %} active{% endif %}">Anatômic</a>
  <a href="/hand-grip/classic/" class="xc-category-pill{% if 'Classic' in category.name %} active{% endif %}">Classic</a>
  <a href="/munhequeira/" class="xc-category-pill{% if category.name == 'MUNHEQUEIRA' %} active{% endif %}">Munhequeira</a>
  <a href="/joelheira/" class="xc-category-pill{% if category.name == 'Joelheira' %} active{% endif %}">Joelheira</a>
  <a href="/acessorios/" class="xc-category-pill{% if category.name == 'Acessórios' %} active{% endif %}">Acessórios</a>
  <a href="/outlet/" class="xc-category-pill{% if category.name == 'Outlet' %} active{% endif %}">Outlet</a>
  <a href="/novidades/" class="xc-category-pill{% if category.name == 'Novidades' %} active{% endif %}">Novidades</a>
</nav>
