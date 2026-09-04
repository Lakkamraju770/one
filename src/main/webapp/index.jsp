<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>EcoShop · modern e‑commerce</title>
  <!-- Font Awesome Icons (free) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <!-- Google Font: Inter -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: #f8fafc;
      color: #0b1a2f;
      line-height: 1.5;
      padding: 2rem 1rem;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
    }

    /* main card */
    .product-card {
      max-width: 1200px;
      width: 100%;
      background: #ffffff;
      border-radius: 2.5rem;
      box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.15);
      overflow: hidden;
      display: grid;
      grid-template-columns: 1fr 1fr;
      transition: all 0.2s ease;
    }

    /* ------- left column: gallery -------- */
    .gallery {
      background: #f1f5f9;
      padding: 2rem 1.5rem;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .main-image {
      width: 100%;
      aspect-ratio: 1 / 1;
      background: #e2e8f0;
      border-radius: 2rem;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 6rem;
      color: #1e3a5f;
      box-shadow: inset 0 8px 12px rgba(0,0,0,0.02);
      transition: background 0.2s;
      margin-bottom: 1.5rem;
      padding: 1rem;
    }

    .main-image i {
      filter: drop-shadow(0 8px 12px rgba(0,20,40,0.1));
    }

    .thumbnails {
      display: flex;
      gap: 0.8rem;
      flex-wrap: wrap;
      justify-content: center;
    }

    .thumb {
      width: 70px;
      height: 70px;
      background: #e9edf3;
      border-radius: 1.2rem;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 2rem;
      color: #1e3a5f;
      cursor: pointer;
      border: 2px solid transparent;
      transition: all 0.2s;
      box-shadow: 0 2px 6px rgba(0,0,0,0.02);
    }

    .thumb:hover {
      background: #d9e0eb;
      border-color: #b0c4db;
    }

    .thumb.active {
      background: #d0dcee;
      border-color: #1e4a7a;
      box-shadow: 0 4px 10px rgba(26, 67, 113, 0.15);
    }

    /* -------- right column: details --------- */
    .details {
      padding: 2.5rem 2.5rem 2.5rem 2rem;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .breadcrumb {
      font-size: 0.8rem;
      letter-spacing: 0.03em;
      text-transform: uppercase;
      color: #5f6c80;
      margin-bottom: 0.75rem;
      display: flex;
      align-items: center;
      gap: 0.4rem;
    }

    .breadcrumb i {
      font-size: 0.6rem;
      color: #8b9bb5;
    }

    .product-title {
      font-size: 2.2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      line-height: 1.2;
      margin-bottom: 0.5rem;
      color: #0b1a2f;
    }

    .rating {
      display: flex;
      align-items: center;
      gap: 0.5rem;
      margin-bottom: 1rem;
      flex-wrap: wrap;
    }

    .stars {
      color: #f5b342;
      letter-spacing: 0.1rem;
      font-size: 1.1rem;
    }

    .rating-text {
      font-size: 0.9rem;
      color: #3f4e66;
      background: #ecf1f7;
      padding: 0.2rem 0.8rem;
      border-radius: 40px;
      font-weight: 500;
    }

    .price-box {
      display: flex;
      align-items: baseline;
      gap: 1rem;
      margin-bottom: 1.2rem;
      flex-wrap: wrap;
    }

    .current-price {
      font-size: 2.4rem;
      font-weight: 700;
      color: #0a2942;
    }

    .old-price {
      font-size: 1.2rem;
      color: #7a8a9e;
      text-decoration: line-through;
      font-weight: 400;
    }

    .discount-badge {
      background: #e5f0e9;
      color: #1e6b4c;
      font-weight: 600;
      font-size: 0.8rem;
      padding: 0.2rem 1rem;
      border-radius: 30px;
      letter-spacing: 0.02em;
    }

    .description {
      color: #2a3b52;
      margin: 0.8rem 0 1.5rem 0;
      font-size: 1rem;
      line-height: 1.6;
      max-width: 90%;
    }

    .options {
      display: flex;
      flex-direction: column;
      gap: 1.2rem;
      margin: 0.5rem 0 1.8rem 0;
    }

    .size-selector {
      display: flex;
      align-items: center;
      gap: 1rem;
      flex-wrap: wrap;
    }

    .size-label {
      font-weight: 600;
      font-size: 0.9rem;
      color: #1f344d;
      letter-spacing: 0.02em;
      margin-right: 0.2rem;
    }

    .size-btn {
      background: #f1f5f9;
      border: none;
      padding: 0.4rem 1.2rem;
      border-radius: 40px;
      font-size: 0.9rem;
      font-weight: 500;
      color: #1a2d45;
      cursor: pointer;
      transition: all 0.15s;
      border: 1.5px solid transparent;
      font-family: 'Inter', sans-serif;
    }

    .size-btn:hover {
      background: #e2e9f2;
    }

    .size-btn.active {
      background: #1a2d45;
      color: white;
      border-color: #1a2d45;
      box-shadow: 0 4px 8px rgba(0,20,40,0.12);
    }

    .color-selector {
      display: flex;
      align-items: center;
      gap: 0.8rem;
      flex-wrap: wrap;
    }

    .color-label {
      font-weight: 600;
      font-size: 0.9rem;
      color: #1f344d;
      margin-right: 0.2rem;
    }

    .color-dot {
      width: 32px;
      height: 32px;
      border-radius: 50%;
      border: 2px solid #dbe1ea;
      cursor: pointer;
      transition: all 0.2s;
      background: #d9d9d9;
      display: inline-block;
    }

    .color-dot:hover {
      transform: scale(1.05);
      border-color: #7f93ad;
    }

    .color-dot.active {
      border-color: #0b1a2f;
      box-shadow: 0 0 0 3px white, 0 0 0 5px #0b1a2f;
    }

    .color-dot.green { background: #3b6b4b; }
    .color-dot.navy { background: #1e3a5f; }
    .color-dot.charcoal { background: #36454F; }

    .add-to-cart {
      display: flex;
      gap: 1rem;
      margin: 0.8rem 0 1rem;
      flex-wrap: wrap;
    }

    .qty-box {
      display: flex;
      align-items: center;
      background: #f1f5f9;
      border-radius: 60px;
      overflow: hidden;
      border: 1px solid #dbe1ea;
    }

    .qty-btn {
      background: transparent;
      border: none;
      width: 2.8rem;
      height: 3rem;
      font-size: 1.5rem;
      font-weight: 300;
      color: #1e3857;
      cursor: pointer;
      transition: 0.1s;
      font-family: 'Inter', sans-serif;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .qty-btn:hover {
      background: #e2e9f2;
    }

    .qty-number {
      width: 2.8rem;
      text-align: center;
      font-weight: 600;
      font-size: 1.1rem;
      color: #0b1a2f;
      background: transparent;
      border: none;
      font-family: 'Inter', sans-serif;
    }

    .btn-primary {
      background: #0b1a2f;
      border: none;
      color: white;
      font-weight: 600;
      font-size: 1rem;
      padding: 0 2.2rem;
      border-radius: 60px;
      height: 3rem;
      display: inline-flex;
      align-items: center;
      gap: 0.6rem;
      cursor: pointer;
      transition: all 0.2s;
      box-shadow: 0 8px 18px -6px rgba(11, 26, 47, 0.25);
      font-family: 'Inter', sans-serif;
      flex: 1;
      justify-content: center;
    }

    .btn-primary i {
      font-size: 1rem;
    }

    .btn-primary:hover {
      background: #1e3a5f;
      transform: scale(1.02);
      box-shadow: 0 12px 24px -8px rgba(11, 26, 47, 0.3);
    }

    .btn-primary:active {
      transform: scale(0.96);
    }

    .meta-info {
      display: flex;
      flex-wrap: wrap;
      gap: 1.5rem;
      margin-top: 1.2rem;
      border-top: 1px solid #e9edf3;
      padding-top: 1.5rem;
      font-size: 0.9rem;
      color: #3f4e66;
    }

    .meta-item {
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .meta-item i {
      color: #5c718a;
      width: 1.2rem;
    }

    /* notification */
    .toast {
      position: fixed;
      bottom: 2rem;
      left: 50%;
      transform: translateX(-50%) translateY(80px);
      background: #0b1a2f;
      color: white;
      padding: 0.8rem 2.2rem;
      border-radius: 60px;
      font-weight: 500;
      box-shadow: 0 20px 30px -10px rgba(0,0,0,0.2);
      opacity: 0;
      transition: all 0.35s cubic-bezier(0.2, 0.9, 0.4, 1);
      pointer-events: none;
      z-index: 999;
      display: flex;
      align-items: center;
      gap: 0.6rem;
      font-size: 0.95rem;
      border: 1px solid rgba(255,255,255,0.05);
    }

    .toast.show {
      opacity: 1;
      transform: translateX(-50%) translateY(0);
    }

    .toast i {
      color: #b5e6c7;
    }

    /* responsive */
    @media (max-width: 800px) {
      .product-card {
        grid-template-columns: 1fr;
        border-radius: 1.8rem;
      }
      .details {
        padding: 2rem 1.8rem;
      }
      .description {
        max-width: 100%;
      }
      .main-image {
        font-size: 4.5rem;
      }
      .thumb {
        width: 60px;
        height: 60px;
        font-size: 1.6rem;
      }
    }

    @media (max-width: 500px) {
      body { padding: 1rem 0.5rem; }
      .product-title { font-size: 1.8rem; }
      .current-price { font-size: 2rem; }
      .btn-primary { flex: 1 1 auto; }
    }

    /* utility */
    .fa-solid, .fa-regular { pointer-events: none; }
  </style>
</head>
<body>

<div class="product-card">

  <!-- left: gallery -->
  <div class="gallery">
    <div class="main-image" id="mainImage">
      <i class="fas fa-backpack" style="font-size: 6rem;"></i>
    </div>
    <div class="thumbnails">
      <div class="thumb active" data-icon="fa-backpack" data-bg="#dce5ef"><i class="fas fa-backpack"></i></div>
      <div class="thumb" data-icon="fa-bag-shopping" data-bg="#d4dfea"><i class="fas fa-bag-shopping"></i></div>
      <div class="thumb" data-icon="fa-suitcase" data-bg="#cad6e4"><i class="fas fa-suitcase"></i></div>
      <div class="thumb" data-icon="fa-travel" data-bg="#c0cee0"><i class="fas fa-travel"></i></div>
    </div>
  </div>

  <!-- right: details -->
  <div class="details">
    <div class="breadcrumb">
      <span>Home</span> <i class="fas fa-chevron-right"></i>
      <span>Bags</span> <i class="fas fa-chevron-right"></i>
      <span>Backpacks</span>
    </div>

    <h1 class="product-title">Minimalist Backpack</h1>

    <div class="rating">
      <span class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></span>
      <span class="rating-text">4.8 (142 reviews)</span>
    </div>

    <div class="price-box">
      <span class="current-price">$89.00</span>
      <span class="old-price">$119.00</span>
      <span class="discount-badge">−25%</span>
    </div>

    <p class="description">
      Lightweight, water-resistant, and built for everyday carry. 20L capacity, padded laptop sleeve, and ergonomic shoulder straps.
    </p>

    <div class="options">
      <div class="size-selector">
        <span class="size-label"><i class="fas fa-ruler"></i> Size</span>
        <button class="size-btn" data-size="S">S</button>
        <button class="size-btn active" data-size="M">M</button>
        <button class="size-btn" data-size="L">L</button>
        <button class="size-btn" data-size="XL">XL</button>
      </div>

      <div class="color-selector">
        <span class="color-label"><i class="fas fa-palette"></i> Color</span>
        <span class="color-dot green active" data-color="Green" style="background:#3b6b4b;"></span>
        <span class="color-dot navy" data-color="Navy" style="background:#1e3a5f;"></span>
        <span class="color-dot charcoal" data-color="Charcoal" style="background:#36454F;"></span>
      </div>
    </div>

    <div class="add-to-cart">
      <div class="qty-box">
        <button class="qty-btn" id="decrementQty">−</button>
        <span class="qty-number" id="qtyDisplay">1</span>
        <button class="qty-btn" id="incrementQty">+</button>
      </div>
      <button class="btn-primary" id="addToCartBtn">
        <i class="fas fa-bag-shopping"></i> Add to cart
      </button>
    </div>

    <div class="meta-info">
      <span class="meta-item"><i class="fas fa-truck"></i> Free shipping</span>
      <span class="meta-item"><i class="fas fa-rotate-left"></i> 30-day returns</span>
      <span class="meta-item"><i class="fas fa-shield"></i> 2-year warranty</span>
    </div>
  </div>
</div>

<!-- toast notification -->
<div id="toast" class="toast">
  <i class="fas fa-check-circle"></i> <span id="toastMessage">Added to cart</span>
</div>

<script>
  (function() {
    // ----- DOM refs -----
    const mainImage = document.getElementById('mainImage');
    const thumbs = document.querySelectorAll('.thumb');
    const sizeBtns = document.querySelectorAll('.size-btn');
    const colorDots = document.querySelectorAll('.color-dot');
    const qtyDisplay = document.getElementById('qtyDisplay');
    const decrementBtn = document.getElementById('decrementQty');
    const incrementBtn = document.getElementById('incrementQty');
    const addToCartBtn = document.getElementById('addToCartBtn');
    const toast = document.getElementById('toast');
    const toastMessage = document.getElementById('toastMessage');

    // state
    let currentQty = 1;
    let selectedSize = 'M';
    let selectedColor = 'Green';

    // ----- gallery thumbnails -----
    thumbs.forEach(thumb => {
      thumb.addEventListener('click', function(e) {
        // remove active class from all
        thumbs.forEach(t => t.classList.remove('active'));
        this.classList.add('active');

        // get icon & bg
        const iconClass = this.dataset.icon;
        const bg = this.dataset.bg || '#e2e8f0';
        // set main image: change icon and background
        mainImage.innerHTML = `<i class="fas ${iconClass}" style="font-size: 6rem;"></i>`;
        mainImage.style.background = bg;
      });
    });

    // ----- size selection -----
    sizeBtns.forEach(btn => {
      btn.addEventListener('click', function() {
        sizeBtns.forEach(b => b.classList.remove('active'));
        this.classList.add('active');
        selectedSize = this.dataset.size;
      });
    });

    // ----- color selection -----
    colorDots.forEach(dot => {
      dot.addEventListener('click', function() {
        colorDots.forEach(d => d.classList.remove('active'));
        this.classList.add('active');
        selectedColor = this.dataset.color;
      });
    });

    // ----- quantity controls -----
    function updateQty(value) {
      let newVal = currentQty + value;
      if (newVal < 1) newVal = 1;
      if (newVal > 10) newVal = 10;
      currentQty = newVal;
      qtyDisplay.textContent = currentQty;
    }

    decrementBtn.addEventListener('click', () => updateQty(-1));
    incrementBtn.addEventListener('click', () => updateQty(1));

    // ----- add to cart (with toast) -----
    function showToast(message) {
      toastMessage.textContent = message || 'Added to cart';
      toast.classList.add('show');
      clearTimeout(window.toastTimeout);
      window.toastTimeout = setTimeout(() => {
        toast.classList.remove('show');
      }, 2500);
    }

    addToCartBtn.addEventListener('click', function() {
      // build feedback message
      const msg = `🛒 ${currentQty} × Minimalist Backpack (${selectedSize}, ${selectedColor})`;
      showToast(msg);
      
      // optional micro feedback: button pulse
      this.style.transform = 'scale(0.96)';
      setTimeout(() => { this.style.transform = ''; }, 150);
    });

    // ----- extra: set default active color (already active in html) -----
    // but ensure first color dot is active
    const firstColor = document.querySelector('.color-dot');
    if (firstColor && !firstColor.classList.contains('active')) {
      firstColor.classList.add('active');
    }

    // sync default size active
    const defaultSize = document.querySelector('.size-btn.active');
    if (defaultSize) selectedSize = defaultSize.dataset.size;

    // initial toast (silent) – just to show nothing on load
    // but we keep it hidden
  })();
</script>

<!-- additional note: using Font Awesome free icons, some icons like fa-travel are aliases, but all work -->
</body>
</html>
