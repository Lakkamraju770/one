<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NexusShop · modern e‑commerce</title>
    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz@14..32&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: #f5f7fb;
            color: #0b1a2e;
            line-height: 1.5;
            padding: 0 1rem;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 0.75rem;
        }

        /* header / nav */
        .navbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            background: #ffffffdd;
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            padding: 0.75rem 1.5rem;
            border-radius: 40px;
            margin: 1rem auto 1.5rem;
            box-shadow: 0 8px 30px rgba(0, 20, 40, 0.06);
            border: 1px solid rgba(255, 255, 255, 0.4);
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-weight: 700;
            font-size: 1.4rem;
            letter-spacing: -0.5px;
            color: #0b1a2e;
        }
        .brand i {
            color: #2a7de1;
            font-size: 1.6rem;
        }
        .brand span {
            color: #2a7de1;
        }

        .nav-links {
            display: flex;
            gap: 0.25rem;
            align-items: center;
            flex-wrap: wrap;
        }
        .nav-links a {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 0.5rem 1rem;
            border-radius: 40px;
            font-weight: 500;
            font-size: 0.9rem;
            color: #2d4059;
            transition: 0.2s;
            text-decoration: none;
        }
        .nav-links a i {
            font-size: 0.95rem;
            opacity: 0.7;
        }
        .nav-links a:hover,
        .nav-links a.active {
            background: #eef4ff;
            color: #1a5bbf;
        }
        .nav-links a.active i {
            opacity: 1;
        }

        .actions {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        .actions .icon-btn {
            width: 40px;
            height: 40px;
            display: grid;
            place-items: center;
            border-radius: 30px;
            background: transparent;
            border: none;
            font-size: 1.15rem;
            color: #2d4059;
            transition: 0.2s;
            cursor: pointer;
        }
        .actions .icon-btn:hover {
            background: #eef4ff;
            color: #1a5bbf;
        }
        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: #2a7de1;
            color: #fff;
            font-size: 0.65rem;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
        }

        .search-box {
            display: flex;
            align-items: center;
            background: #f0f4fe;
            border-radius: 40px;
            padding: 0 0.5rem 0 1rem;
            border: 2px solid transparent;
            transition: 0.2s;
            min-width: 200px;
        }
        .search-box:focus-within {
            border-color: #2a7de1;
            background: #fff;
            box-shadow: 0 0 0 4px rgba(42, 125, 225, 0.1);
        }
        .search-box input {
            border: none;
            background: transparent;
            padding: 0.6rem 0;
            font-size: 0.9rem;
            width: 100%;
            outline: none;
            color: #0b1a2e;
        }
        .search-box input::placeholder {
            color: #8a9cb0;
        }
        .search-box button {
            background: transparent;
            border: none;
            padding: 0.4rem 0.4rem 0.4rem 0.8rem;
            color: #5d6f83;
            font-size: 1rem;
            cursor: pointer;
            transition: 0.2s;
        }
        .search-box button:hover {
            color: #2a7de1;
        }

        /* mobile toggle */
        .mobile-toggle {
            display: none;
            background: #eef4ff;
            border: none;
            width: 40px;
            height: 40px;
            border-radius: 30px;
            font-size: 1.2rem;
            color: #0b1a2e;
            cursor: pointer;
        }

        #mobileMenu {
            display: none;
            background: #ffffff;
            border-radius: 28px;
            padding: 1rem 0.5rem;
            margin-top: 0.25rem;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.03);
        }
        #mobileMenu a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 0.6rem 1.2rem;
            border-radius: 40px;
            color: #1e2f40;
            font-weight: 500;
            text-decoration: none;
            transition: 0.2s;
        }
        #mobileMenu a i {
            width: 24px;
            color: #5d6f83;
        }
        #mobileMenu a:hover {
            background: #eef4ff;
        }

        /* hero */
        .hero {
            background: linear-gradient(145deg, #0b1a2e, #1d3450);
            border-radius: 40px;
            padding: 3rem 2.5rem;
            margin: 1.5rem 0 2rem;
            color: #fff;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 1.5rem;
            box-shadow: 0 20px 40px -12px rgba(11, 26, 46, 0.25);
            position: relative;
            overflow: hidden;
        }
        .hero::after {
            content: '';
            position: absolute;
            right: -10%;
            top: -30%;
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, rgba(42, 125, 225, 0.1) 0%, transparent 70%);
            border-radius: 50%;
        }
        .hero-content {
            max-width: 550px;
            position: relative;
            z-index: 2;
        }
        .hero-content .badge {
            display: inline-block;
            background: rgba(42, 125, 225, 0.2);
            padding: 0.2rem 1rem;
            border-radius: 40px;
            font-size: 0.8rem;
            font-weight: 600;
            letter-spacing: 0.3px;
            color: #a0c6ff;
            margin-bottom: 0.75rem;
        }
        .hero-content h1 {
            font-size: 2.5rem;
            font-weight: 700;
            line-height: 1.2;
            letter-spacing: -0.02em;
        }
        .hero-content p {
            opacity: 0.8;
            margin: 0.75rem 0 1.5rem;
            font-size: 1rem;
            max-width: 420px;
        }
        .hero-actions {
            display: flex;
            gap: 0.75rem;
            flex-wrap: wrap;
        }
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 0.6rem 1.6rem;
            border-radius: 40px;
            font-weight: 600;
            font-size: 0.95rem;
            border: none;
            cursor: pointer;
            transition: 0.2s;
            text-decoration: none;
        }
        .btn-primary {
            background: #2a7de1;
            color: #fff;
            box-shadow: 0 4px 12px rgba(42, 125, 225, 0.25);
        }
        .btn-primary:hover {
            background: #1b62b5;
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(42, 125, 225, 0.3);
        }
        .btn-outline-light {
            background: transparent;
            color: #fff;
            border: 2px solid rgba(255, 255, 255, 0.25);
        }
        .btn-outline-light:hover {
            background: rgba(255, 255, 255, 0.08);
            border-color: rgba(255, 255, 255, 0.5);
        }
        .hero-img {
            flex: 0 0 200px;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            z-index: 2;
        }
        .hero-img i {
            font-size: 8rem;
            color: rgba(255, 255, 255, 0.06);
            position: absolute;
        }
        .hero-img img {
            width: 100%;
            max-width: 200px;
            border-radius: 24px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
            object-fit: cover;
        }

        /* section */
        .section {
            padding: 2.5rem 0 1.5rem;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 0.5rem 1rem;
            margin-bottom: 1.8rem;
        }
        .section-header h2 {
            font-weight: 700;
            font-size: 1.6rem;
            letter-spacing: -0.02em;
        }
        .section-header .sub {
            color: #5d6f83;
            font-size: 0.95rem;
            margin-top: 0.1rem;
        }
        .view-all {
            color: #2a7de1;
            font-weight: 600;
            font-size: 0.9rem;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            transition: 0.2s;
            text-decoration: none;
        }
        .view-all:hover {
            gap: 12px;
            color: #1b62b5;
        }

        /* categories */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(140px, 1fr));
            gap: 1rem;
        }
        .cat-card {
            background: #fff;
            border-radius: 28px;
            padding: 1.2rem 0.5rem;
            text-align: center;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.02);
            border: 1px solid #eaedf2;
            transition: 0.25s;
            cursor: pointer;
        }
        .cat-card:hover {
            transform: translateY(-5px);
            border-color: #2a7de1;
            box-shadow: 0 12px 28px -8px rgba(42, 125, 225, 0.08);
        }
        .cat-card .icon-wrap {
            width: 52px;
            height: 52px;
            background: #eef4ff;
            border-radius: 30px;
            display: grid;
            place-items: center;
            margin: 0 auto 0.6rem;
            font-size: 1.5rem;
            color: #2a7de1;
            transition: 0.2s;
        }
        .cat-card:hover .icon-wrap {
            background: #2a7de1;
            color: #fff;
        }
        .cat-card h4 {
            font-weight: 600;
            font-size: 0.9rem;
        }
        .cat-card .count {
            font-size: 0.75rem;
            color: #8a9cb0;
        }

        /* products */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(210px, 1fr));
            gap: 1.5rem;
        }
        .product-card {
            background: #fff;
            border-radius: 28px;
            overflow: hidden;
            border: 1px solid #eaedf2;
            transition: 0.25s;
            display: flex;
            flex-direction: column;
        }
        .product-card:hover {
            transform: translateY(-6px);
            border-color: #d0d9e6;
            box-shadow: 0 20px 40px -12px rgba(0, 0, 0, 0.06);
        }
        .product-card .img-wrap {
            background: #f2f6fd;
            aspect-ratio: 1/1;
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.3s;
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.02);
        }
        .product-card .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: #2a7de1;
            color: #fff;
            padding: 0.15rem 0.8rem;
            border-radius: 30px;
            font-size: 0.65rem;
            font-weight: 700;
            letter-spacing: 0.3px;
        }
        .product-card .badge.sale {
            background: #f3b23a;
            color: #0b1a2e;
        }
        .product-card .wish-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 34px;
            height: 34px;
            border-radius: 30px;
            background: rgba(255, 255, 255, 0.9);
            border: none;
            display: grid;
            place-items: center;
            font-size: 1rem;
            color: #5d6f83;
            backdrop-filter: blur(4px);
            transition: 0.2s;
            cursor: pointer;
        }
        .product-card .wish-btn:hover {
            background: #fff;
            color: #e55a5a;
            transform: scale(1.05);
        }
        .product-card .body {
            padding: 1rem 1rem 0.5rem;
            flex: 1;
        }
        .product-card .body .category-tag {
            font-size: 0.65rem;
            text-transform: uppercase;
            color: #8a9cb0;
            font-weight: 600;
            letter-spacing: 0.3px;
        }
        .product-card .body h5 {
            font-weight: 600;
            font-size: 1rem;
            margin: 0.2rem 0 0.25rem;
            line-height: 1.3;
        }
        .product-card .body .price-row {
            display: flex;
            align-items: center;
            gap: 8px;
            margin: 0.2rem 0;
        }
        .product-card .body .price {
            font-weight: 700;
            font-size: 1.1rem;
        }
        .product-card .body .old-price {
            color: #8a9cb0;
            text-decoration: line-through;
            font-size: 0.85rem;
        }
        .product-card .body .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 0.8rem;
            color: #f5b342;
            margin-top: 0.2rem;
        }
        .product-card .body .rating span {
            color: #8a9cb0;
        }
        .product-card .footer {
            padding: 0.2rem 1rem 1rem;
        }
        .product-card .footer .add-btn {
            width: 100%;
            padding: 0.6rem;
            border-radius: 40px;
            background: #0b1a2e;
            color: #fff;
            font-weight: 600;
            border: none;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 6px;
            transition: 0.2s;
            cursor: pointer;
            font-size: 0.9rem;
        }
        .product-card .footer .add-btn:hover {
            background: #2a7de1;
        }
        .product-card .footer .add-btn.added {
            background: #2a9d8f;
        }

        /* deal */
        .deal-wrap {
            display: flex;
            flex-wrap: wrap;
            background: #fff;
            border-radius: 32px;
            overflow: hidden;
            border: 1px solid #eaedf2;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.02);
        }
        .deal-wrap .deal-img {
            flex: 1 1 240px;
            background: #eef4ff;
            min-height: 200px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            flex: 2 1 300px;
            padding: 2rem 2rem;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            background: #f3b23a;
            color: #0b1a2e;
            padding: 0.1rem 1rem;
            border-radius: 40px;
            font-size: 0.7rem;
            font-weight: 700;
            text-transform: uppercase;
            align-self: flex-start;
            margin-bottom: 0.5rem;
        }
        .deal-wrap .deal-content h3 {
            font-size: 1.6rem;
            font-weight: 700;
        }
        .deal-wrap .deal-content .desc {
            color: #5d6f83;
            margin: 0.2rem 0 0.6rem;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 1.8rem;
            font-weight: 800;
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 1.2rem;
            font-weight: 400;
            color: #8a9cb0;
            text-decoration: line-through;
            margin-left: 8px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 0.85rem;
            color: #5d6f83;
            margin: 0.2rem 0 0.8rem;
        }
        .deal-wrap .deal-content .stock strong {
            color: #2a7de1;
        }
        .timer-grid {
            display: flex;
            gap: 10px;
            margin: 0.5rem 0 1rem;
        }
        .timer-box {
            background: #0b1a2e;
            color: #fff;
            padding: 0.4rem 0.8rem;
            border-radius: 16px;
            text-align: center;
            min-width: 60px;
        }
        .timer-box .num {
            font-size: 1.4rem;
            font-weight: 700;
        }
        .timer-box .label {
            font-size: 0.6rem;
            opacity: 0.7;
            text-transform: uppercase;
        }

        /* testimonials */
        .testimonials-scroll {
            display: flex;
            gap: 1.5rem;
            overflow-x: auto;
            padding: 0.5rem 0.2rem 1.2rem;
            scroll-snap-type: x mandatory;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 4px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: #cbd5e1;
            border-radius: 20px;
        }
        .testimonial-card {
            flex: 0 0 280px;
            background: #fff;
            border-radius: 28px;
            padding: 1.5rem;
            border: 1px solid #eaedf2;
            scroll-snap-align: start;
            transition: 0.2s;
        }
        .testimonial-card:hover {
            border-color: #d0d9e6;
        }
        .testimonial-card .stars {
            color: #f5b342;
            font-size: 0.9rem;
            letter-spacing: 2px;
            margin-bottom: 0.5rem;
        }
        .testimonial-card blockquote {
            font-style: italic;
            font-size: 0.95rem;
            color: #1e2f40;
            margin-bottom: 0.8rem;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .testimonial-card .author .avatar {
            width: 42px;
            height: 42px;
            border-radius: 30px;
            object-fit: cover;
            background: #eef4ff;
        }
        .testimonial-card .author .name {
            font-weight: 600;
            font-size: 0.9rem;
        }
        .testimonial-card .author .role {
            font-size: 0.75rem;
            color: #8a9cb0;
        }

        /* newsletter */
        .newsletter-wrap {
            background: #0b1a2e;
            border-radius: 40px;
            padding: 2.5rem 2rem;
            color: #fff;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 1.5rem;
        }
        .newsletter-wrap .text h3 {
            font-weight: 700;
            font-size: 1.5rem;
        }
        .newsletter-wrap .text p {
            opacity: 0.7;
        }
        .newsletter-wrap form {
            display: flex;
            flex-wrap: wrap;
            gap: 0.6rem;
            flex: 1 1 360px;
        }
        .newsletter-wrap form input {
            flex: 2 1 180px;
            padding: 0.7rem 1.2rem;
            border-radius: 40px;
            border: none;
            font-size: 0.95rem;
            background: rgba(255, 255, 255, 0.08);
            color: #fff;
            outline: 2px solid transparent;
            transition: 0.2s;
        }
        .newsletter-wrap form input::placeholder {
            color: rgba(255, 255, 255, 0.4);
        }
        .newsletter-wrap form input:focus {
            outline-color: #2a7de1;
            background: rgba(255, 255, 255, 0.14);
        }
        .newsletter-wrap form .btn {
            background: #2a7de1;
            color: #fff;
            padding: 0.7rem 1.8rem;
            border-radius: 40px;
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: 0.2s;
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .newsletter-wrap form .btn:hover {
            background: #1b62b5;
        }
        #newsletterMsg {
            margin-top: 0.5rem;
            font-size: 0.9rem;
            width: 100%;
        }

        /* footer */
        footer {
            margin: 2rem 0 1rem;
            padding: 2rem 0 1rem;
            border-top: 1px solid #eaedf2;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 2rem;
        }
        .footer-grid .brand-col .brand {
            font-size: 1.2rem;
            margin-bottom: 0.4rem;
        }
        .footer-grid .brand-col p {
            color: #5d6f83;
            font-size: 0.85rem;
            max-width: 260px;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 10px;
            margin-top: 0.8rem;
        }
        .footer-grid .brand-col .socials a {
            width: 36px;
            height: 36px;
            border-radius: 30px;
            background: #eef4ff;
            display: grid;
            place-items: center;
            color: #2d4059;
            transition: 0.2s;
            text-decoration: none;
        }
        .footer-grid .brand-col .socials a:hover {
            background: #2a7de1;
            color: #fff;
        }
        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 0.9rem;
            margin-bottom: 0.6rem;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }
        .footer-grid .col ul li a {
            color: #5d6f83;
            font-size: 0.85rem;
            text-decoration: none;
            transition: 0.2s;
        }
        .footer-grid .col ul li a:hover {
            color: #2a7de1;
        }
        .footer-bottom {
            text-align: center;
            padding-top: 1.5rem;
            margin-top: 1.5rem;
            border-top: 1px solid #eaedf2;
            color: #8a9cb0;
            font-size: 0.8rem;
        }

        /* responsive */
        @media (max-width: 820px) {
            .navbar {
                border-radius: 28px;
                padding: 0.6rem 1rem;
            }
            .nav-links {
                display: none;
            }
            .mobile-toggle {
                display: grid;
                place-items: center;
            }
            .search-box {
                min-width: 140px;
                padding: 0 0.4rem 0 0.8rem;
            }
            .search-box input {
                font-size: 0.8rem;
            }
            .hero {
                padding: 2rem 1.5rem;
                border-radius: 28px;
            }
            .hero-content h1 {
                font-size: 2rem;
            }
            .hero-img {
                flex: 0 0 120px;
            }
            .hero-img img {
                max-width: 140px;
            }
            .products-grid {
                grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
                gap: 1rem;
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 1.5rem;
            }
            .deal-wrap .deal-content {
                padding: 1.5rem;
            }
            .timer-box {
                min-width: 50px;
                padding: 0.3rem 0.6rem;
            }
            .timer-box .num {
                font-size: 1.1rem;
            }
        }

        @media (max-width: 500px) {
            body {
                padding: 0 0.5rem;
            }
            .navbar {
                flex-wrap: wrap;
                gap: 0.5rem;
            }
            .actions {
                margin-left: auto;
            }
            .search-box {
                order: 10;
                flex: 1 1 100%;
                min-width: 100px;
            }
            .hero-content h1 {
                font-size: 1.6rem;
            }
            .hero-img {
                flex: 0 0 90px;
            }
            .hero-img img {
                max-width: 100px;
            }
            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 0.8rem;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 1rem;
            }
            .deal-wrap .deal-content h3 {
                font-size: 1.2rem;
            }
            .deal-wrap .deal-content .price-big {
                font-size: 1.4rem;
            }
            .newsletter-wrap {
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>

    <!-- ===== HEADER ===== -->
    <header class="container">
        <div class="navbar">
            <div style="display:flex;align-items:center;gap:0.5rem;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-store-alt"></i>
                    <span>Nexus<span>Shop</span></span>
                </a>
            </div>

            <nav class="nav-links" id="mainNav">
                <a href="#" class="active"><i class="fas fa-home"></i> Home</a>
                <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
                <a href="#products"><i class="fas fa-fire"></i> Trending</a>
                <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
                <a href="#testimonials"><i class="fas fa-star"></i> Reviews</a>
            </nav>

            <div style="display:flex;align-items:center;gap:8px;flex-wrap:wrap;">
                <div class="search-box" role="search">
                    <input type="search" id="searchInput" placeholder="Search..." aria-label="Search">
                    <button id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
                </div>

                <div class="actions">
                    <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" aria-label="Cart">
                            <i class="fas fa-shopping-bag"></i>
                        </button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile -->
        <div id="mobileMenu">
            <a href="#"><i class="fas fa-home"></i> Home</a>
            <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
            <a href="#products"><i class="fas fa-fire"></i> Trending</a>
            <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
            <a href="#testimonials"><i class="fas fa-star"></i> Reviews</a>
            <a href="#"><i class="far fa-user"></i> Account</a>
            <a href="#"><i class="far fa-heart"></i> Wishlist</a>
        </div>
    </header>

    <!-- ===== MAIN ===== -->
    <main class="container">

        <!-- HERO -->
        <section class="hero">
            <div class="hero-content">
                <div class="badge"><i class="fas fa-sparkles"></i> New collection 2026</div>
                <h1>Premium essentials <br>for everyday</h1>
                <p>Curated fashion, tech & accessories — free shipping on first order.</p>
                <div class="hero-actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
                    <button class="btn btn-outline-light" id="exploreDeals"><i class="fas fa-clock"></i> Explore deals</button>
                </div>
            </div>
            <div class="hero-img">
                <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80" alt="hero" loading="lazy">
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories">
            <div class="section-header">
                <div>
                    <h2>Browse categories</h2>
                    <div class="sub">Find what you love</div>
                </div>
                <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products">
            <div class="section-header">
                <div>
                    <h2>Trending now</h2>
                    <div class="sub">Popular picks from our community</div>
                </div>
                <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals">
            <div class="section-header">
                <div>
                    <h2>⚡ Flash deal</h2>
                    <div class="sub">Limited stock — hurry up</div>
                </div>
            </div>
            <div class="deal-wrap">
                <div class="deal-img">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80"
