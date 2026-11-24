-- 1. Cek jumlah baris data di setiap tabel
SELECT 'users' AS table_name, COUNT(*) AS total_rows FROM users
UNION ALL
SELECT 'categories', COUNT(*) FROM categories
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items;

-- 2. Query utama (wajib): menggabungkan WHERE, ORDER BY, dan LIMIT
-- Menampilkan maksimal 3 produk dengan stok minimal 15, diurutkan dari harga tertinggi
SELECT
    product_id,
    product_name,
    sku,
    price,
    stock_quantity
FROM products
WHERE stock_quantity >= 15
ORDER BY price DESC
LIMIT 3;

-- 3. Menampilkan daftar pesanan beserta nama pembeli dan statusnya
SELECT
    o.order_id,
    u.full_name AS customer_name,
    o.order_status,
    o.total_amount,
    o.ordered_at
FROM orders o
JOIN users u ON o.user_id = u.user_id
ORDER BY o.ordered_at DESC;

-- 4. Menampilkan rincian item pada setiap pesanan (relasi many-to-many lewat order_items)
SELECT
    oi.order_id,
    u.full_name AS customer_name,
    p.product_name,
    c.category_name,
    oi.quantity,
    oi.unit_price,
    (oi.quantity * oi.unit_price) AS subtotal
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN users u ON o.user_id = u.user_id
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
ORDER BY oi.order_id, oi.order_item_id;