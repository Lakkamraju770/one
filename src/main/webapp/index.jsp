<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Multi-Catalog E‑commerce</title>
  <!-- Font Awesome Icons & Google Font (Inter) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Inter', sans-serif;
    }

    body {
      background: #f6f8fc;
      color: #1e293b;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    /* header & navigation */
    header {
      background: white;
      box-shadow: 0 4px 12px rgba(0,0,0,0.03);
      padding: 1rem 2rem;
      border-bottom: 1px solid #e9edf2;
      position: sticky;
      top: 0;
      z-index: 10;
      backdrop-filter: blur(4px);
      background: rgba(255,255,255,0.92);
    }

    .header-inner {
      max-width: 1400px;
      margin: 0 auto;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 1rem;
    }

    .logo {
      font-size: 1.7rem;
      font-weight: 700;
      letter-spacing: -0.5px;
      color: #0f172a;
    }
    .logo i {
      color: #3b82f6;
      margin-right: 6px;
    }

    .catalog-nav {
      display: flex;
      flex-wrap: wrap;
      gap: 0.5rem;
    }

    .catalog-btn {
      background: transparent;
      border: 1px solid #d1d9e6;
      padding: 0.5rem 1.2rem;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.9rem;
      color: #1e293b;
      cursor: pointer;
      transition: all 0.15s;
      display: flex;
      align-items: center;
      gap: 8px;
      background: white;
      box-shadow: 0 1px 2px rgba(0,0,0,0.02);
    }

    .catalog-btn i {
      color: #64748b;
      font-size: 0.9rem;
    }

    .catalog-btn:hover {
      background: #f1f5f9;
      border-color: #94a3b8;
      transform: translateY(-1px);
    }

    .catalog-btn.active {
      background: #1e293b;
      border-color: #1e293b;
      color: white;
      box-shadow: 0 4px 10px rgba(30,41,59,0.15);
    }
    .catalog-btn.active i {
      color: white;
    }

    .cart-icon {
      font-size: 1.3rem;
      background: #f1f5f9;
      padding: 0.5rem 1rem;
      border-radius: 40px;
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 500;
    }
    .cart-icon i {
      color: #0f172a;
    }
    .cart-badge {
      background: #3b82f6;
      color: white;
      border-radius: 30px;
      padding: 0.1rem 0.6rem;
      font-size: 0.8rem;
      font-weight: 600;
    }

    /* main container */
    .container {
      max-width: 1400px;
      margin: 0 auto;
      padding: 2rem 2rem 4rem;
      flex: 1;
      width: 100%;
    }

    /* page header */
    .page-header {
      display: flex;
      justify-content: space-between;
      align-items: baseline;
      flex-wrap: wrap;
      margin-bottom: 2rem;
    }
    .page-header h1 {
      font-weight: 600;
      font-size: 2rem;
      letter-spacing: -0.3px;
    }
    .page-header h1 small {
      font-weight: 400;
      font-size: 1rem;
      color: #64748b;
      margin-left: 12px;
    }
    .page-header .count {
      background: #e9edf2;
      padding: 0.3rem 1rem;
      border-radius: 40px;
      font-size: 0.9rem;
      color: #1e293b;
    }

    /* product grid */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
      gap: 2rem;
    }

    .product-card {
      background: white;
      border-radius: 24px;
      padding: 1.2rem 1.2rem 1.5rem;
      box-shadow: 0 8px 20px rgba(0,0,0,0.02), 0 2px 6px rgba(0,0,0,0.03);
      transition: all 0.2s;
      border: 1px solid #edf2f7;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      border-color: #cbd5e1;
      box-shadow: 0 20px 30px -12px rgba(0,0,0,0.08);
    }

    .product-image {
      background: #f8fafc;
      border-radius: 16px;
      height: 180px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 1rem;
      font-size: 3.5rem;
      color: #94a3b8;
      border: 1px solid #eef2f6;
      transition: background 0.2s;
    }
    .product-card:hover .product-image {
      background: #f1f5f9;
    }

    .product-title {
      font-weight: 600;
      font-size: 1.1rem;
      margin-bottom: 0.3rem;
      line-height: 1.3;
    }
    .product-catalog-tag {
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.4px;
      background: #eef2ff;
      color: #4338ca;
      padding: 0.2rem 0.7rem;
      border-radius: 30px;
      display: inline-block;
      margin-bottom: 0.7rem;
      font-weight: 600;
    }
    .product-price {
      font-weight: 700;
      font-size: 1.4rem;
      color: #0f172a;
      margin-top: 0.2rem;
    }
    .product-price small {
      font-weight: 400;
      font-size: 0.9rem;
      color: #64748b;
      margin-left: 4px;
    }
    .product-desc {
      color: #475569;
      font-size: 0.9rem;
      margin: 0.5rem 0 1rem;
      line-height: 1.4;
      flex: 1;
    }

    .add-btn {
      background: #1e293b;
      border: none;
      color: white;
      font-weight: 600;
      padding: 0.7rem 0;
      border-radius: 60px;
      font-size: 0.9rem;
      cursor: pointer;
      transition: all 0.15s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      margin-top: 6px;
      border: 1px solid #1e293b;
    }
    .add-btn i {
      font-size: 0.9rem;
    }
    .add-btn:hover {
      background: #0f172a;
      transform: scale(0.98);
    }
    .add-btn:active {
      background: #000;
    }

    /* empty state */
    .empty-state {
      text-align: center;
      padding: 4rem 1rem;
      color: #64748b;
    }
    .empty-state i {
      font-size: 3rem;
      margin-bottom: 1rem;
      color: #cbd5e1;
    }
    .empty-state h3 {
      font-weight: 500;
      font-size: 1.4rem;
      color: #1e293b;
    }

    footer {
      border-top: 1px solid #e2e8f0;
      padding: 1.5rem 2rem;
      text-align: center;
      color: #64748b;
      font-size: 0.9rem;
      background: white;
    }

    /* responsive */
    @media (max-width: 700px) {
      .header-inner {
        flex-direction: column;
        align-items: stretch;
      }
      .catalog-nav {
        justify-content: center;
      }
      .cart-icon {
        align-self: flex-end;
      }
      .page-header {
        flex-direction: column;
        gap: 0.3rem;
      }
    }
  </style>
</head>
<body>
  <header>
    <div class="header-inner">
      <div class="logo">
        <i class="fas fa-store-alt"></i> Catalog<span style="font-weight:400;">Hub</span>
      </div>
      <div class="catalog-nav" id="catalogNav">
        <!-- catalog buttons injected by js -->
      </div>
      <div class="cart-icon">
        <i class="fas fa-shopping-bag"></i> <span id="cartCount" class="cart-badge">0</span>
      </div>
    </div>
  </header>

  <main class="container">
    <div class="page-header">
      <h1 id="pageTitle">All Products <small id="catalogSub"></small></h1>
      <span class="count" id="productCount">0 items</span>
    </div>
    <div id="productGrid" class="product-grid">
      <!-- dynamic products -->
    </div>
  </main>

  <footer>
    <i class="fas fa-tags" style="margin-right: 6px;"></i> Multi‑catalog demo · click catalog buttons to filter
  </footer>

  <script>
    (function() {
      // ---------- DATA: multiple catalogs with products ----------
      const catalogs = [
        { id: 'all', label: '📦 All', icon: 'fa-th-large' },
        { id: 'electronics', label: '📱 Electronics', icon: 'fa-laptop' },
        { id: 'books', label: '📚 Books', icon: 'fa-book-open' },
        { id: 'home', label: '🏠 Home & Kitchen', icon: 'fa-couch' },
        { id: 'fashion', label: '👕 Fashion', icon: 'fa-tshirt' }
      ];

      const products = [
        // Electronics
        { id: 1, name: 'Wireless Noise-Canceling Headphones', price: 149.99, catalog: 'electronics', desc: 'Over-ear, 30h battery, deep bass.', icon: 'fa-headphones' },
        { id: 2, name: 'Smart Fitness Tracker', price: 89.00, catalog: 'electronics', desc: 'Heart rate, GPS, sleep monitor.', icon: 'fa-heartbeat' },
        { id: 3, name: 'Portable Bluetooth Speaker', price: 59.95, catalog: 'electronics', desc: 'Waterproof, 360° sound, 12h playtime.', icon: 'fa-music' },
        // Books
        { id: 4, name: 'The Alchemist (Paperback)', price: 16.99, catalog: 'books', desc: 'Paulo Coelho’s timeless classic.', icon: 'fa-book' },
        { id: 5, name: 'Atomic Habits', price: 21.50, catalog: 'books', desc: 'Tiny changes, remarkable results.', icon: 'fa-book-open' },
        { id: 6, name: 'Dune (Movie Tie-in)', price: 18.75, catalog: 'books', desc: 'Sci-fi epic by Frank Herbert.', icon: 'fa-rocket' },
        // Home & Kitchen
        { id: 7, name: 'Nonstick Frying Pan Set', price: 39.99, catalog: 'home', desc: '2-piece, induction ready, easy clean.', icon: 'fa-utensils' },
        { id: 8, name: 'Bamboo Cutting Board', price: 27.50, catalog: 'home', desc: 'Eco-friendly, large, juice groove.', icon: 'fa-leaf' },
        { id: 9, name: 'Smart Coffee Maker', price: 129.00, catalog: 'home', desc: 'WiFi, programmable, 12-cup.', icon: 'fa-coffee' },
        // Fashion
        { id: 10, name: 'Men’s Classic T-Shirt', price: 24.90, catalog: 'fashion', desc: '100% cotton, regular fit, 4 colors.', icon: 'fa-tshirt' },
        { id: 11, name: 'Women’s Jogger Pants', price: 39.90, catalog: 'fashion', desc: 'Soft fleece, elastic waist, pockets.', icon: 'fa-female' },
        { id: 12, name: 'Suede Leather Belt', price: 34.50, catalog: 'fashion', desc: 'Genuine leather, classic buckle.', icon: 'fa-bolt' },
        // extra electronics for more variety
        { id: 13, name: 'Wireless Charging Pad', price: 29.99, catalog: 'electronics', desc: 'Qi-compatible, LED indicator.', icon: 'fa-bolt' },
        { id: 14, name: '4K Action Camera', price: 199.00, catalog: 'electronics', desc: 'Waterproof, image stabilization.', icon: 'fa-camera' },
        // extra books
        { id: 15, name: '1984 (Signet Classics)', price: 9.99, catalog: 'books', desc: 'Orwell’s dystopian masterpiece.', icon: 'fa-eye' },
        // extra home
        { id: 16, name: 'Ceramic Plant Pot', price: 19.99, catalog: 'home', desc: 'Modern, self-watering, 6 inch.', icon: 'fa-pagelines' }
      ];

      // ---------- state ----------
      let currentCatalog = 'all';   // 'all' or catalog id
      let cartItemsCount = 0;

      // DOM elements
      const catalogNav = document.getElementById('catalogNav');
      const productGrid = document.getElementById('productGrid');
      const pageTitle = document.getElementById('pageTitle');
      const catalogSub = document.getElementById('catalogSub');
      const productCount = document.getElementById('productCount');
      const cartCountSpan = document.getElementById('cartCount');

      // ---------- render products based on current catalog ----------
      function renderProducts() {
        const filtered = currentCatalog === 'all' 
          ? products 
          : products.filter(p => p.catalog === currentCatalog);

        // update count & title
        productCount.textContent = filtered.length + ' items';
        const catalogLabel = catalogs.find(c => c.id === currentCatalog)?.label || 'All';
        pageTitle.innerHTML = `${catalogLabel} <small id="catalogSub"></small>`;
        document.getElementById('catalogSub').textContent = currentCatalog === 'all' ? '· all catalogs' : '';

        if (filtered.length === 0) {
          productGrid.innerHTML = `
            <div class="empty-state" style="grid-column:1/-1;">
              <i class="fas fa-box-open"></i>
              <h3>No products in this catalog</h3>
              <p style="margin-top:6px;">Try switching to another catalog.</p>
            </div>
          `;
          return;
        }

        // build grid
        let html = '';
        filtered.forEach(product => {
          const catalogInfo = catalogs.find(c => c.id === product.catalog);
          const catalogLabel = catalogInfo ? catalogInfo.label : product.catalog;
          // icon fallback
          const iconClass = product.icon || 'fa-cube';
          html += `
            <div class="product-card" data-id="${product.id}">
              <div class="product-image">
                <i class="fas ${iconClass}"></i>
              </div>
              <div class="product-title">${product.name}</div>
              <span class="product-catalog-tag"><i class="fas ${catalogInfo?.icon || 'fa-tag'}"></i> ${catalogLabel}</span>
              <div class="product-desc">${product.desc}</div>
              <div class="product-price">$${product.price.toFixed(2)} <small>USD</small></div>
              <button class="add-btn" data-id="${product.id}" data-name="${product.name}" data-price="${product.price}">
                <i class="fas fa-plus-circle"></i> Add to cart
              </button>
            </div>
          `;
        });
        productGrid.innerHTML = html;

        // attach add-to-cart listeners
        document.querySelectorAll('.add-btn').forEach(btn => {
          btn.addEventListener('click', function(e) {
            e.stopPropagation();
            const name = this.dataset.name;
            const price = parseFloat(this.dataset.price);
            addToCart(name, price);
          });
        });
      }

      // ---------- add to cart (simple counter) ----------
      function addToCart(name, price) {
        cartItemsCount += 1;
        cartCountSpan.textContent = cartItemsCount;
        // subtle feedback (optional)
        const badge = cartCountSpan;
        badge.style.transform = 'scale(1.3)';
        setTimeout(() => badge.style.transform = 'scale(1)', 150);
        // you could also log: console.log(`Added: ${name} $${price}`);
      }

      // ---------- render catalog navigation buttons ----------
      function renderCatalogNav() {
        let html = '';
        catalogs.forEach(cat => {
          const activeClass = (currentCatalog === cat.id) ? 'active' : '';
          html += `
            <button class="catalog-btn ${activeClass}" data-catalog="${cat.id}">
              <i class="fas ${cat.icon}"></i> ${cat.label}
            </button>
          `;
        });
        catalogNav.innerHTML = html;

        // attach catalog switch event
        document.querySelectorAll('.catalog-btn').forEach(btn => {
          btn.addEventListener('click', function() {
            const catalogId = this.dataset.catalog;
            if (catalogId === currentCatalog) return;
            // update active state
            document.querySelectorAll('.catalog-btn').forEach(b => b.classList.remove('active'));
            this.classList.add('active');
            currentCatalog = catalogId;
            renderProducts();
          });
        });
      }

      // ---------- init ----------
      function init() {
        renderCatalogNav();
        renderProducts();
        // cart count starts at 0
        cartCountSpan.textContent = '0';
      }

      init();
    })();
  </script>
</body>
</html>
