INSERT INTO users (full_name, email, password_hash) VALUES
('Nadia Pratiwi', 'nadia.pratiwi@example.com', '$2b$12$examplehashnadia1234567890'),
('Raka Saputra', 'raka.saputra@example.com', '$2b$12$examplehashraka1234567890'),
('Siti Rahmawati', 'siti.rahma@example.com', '$2b$12$examplehashsiti1234567890'),
('Bima Wijaya', 'bima.wijaya@example.com', '$2b$12$examplehashbima1234567890');

INSERT INTO categories (category_name, description) VALUES
('Electronics', 'Gadgets, audio gear, and everyday tech accessories'),
('Apparel', 'Daily wear, outerwear, and basics'),
('Home & Living', 'Desk accessories, drinkware, and home essentials'),
('Fitness', 'Workout gear and active accessories');

INSERT INTO products (category_id, product_name, sku, price, stock_quantity) VALUES
(1, 'Wireless Mechanical Keyboard', 'RVS-ELEC-001', 750000.00, 18),
(1, 'USB-C Multiport Hub', 'RVS-ELEC-002', 320000.00, 35),
(2, 'Heavyweight Cotton Hoodie', 'RVS-APRL-001', 285000.00, 24),
(2, 'Everyday Chino Shorts', 'RVS-APRL-002', 195000.00, 12),
(3, 'Insulated Stainless Tumbler', 'RVS-HOME-001', 165000.00, 40),
(4, 'Non-Slip Yoga Mat', 'RVS-FIT-001', 210000.00, 15);

INSERT INTO orders (user_id, order_status, total_amount) VALUES
(1, 'paid', 1070000.00),
(2, 'shipped', 285000.00),
(3, 'pending', 375000.00),
(1, 'paid', 210000.00);

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 750000.00),
(1, 2, 1, 320000.00),
(2, 3, 1, 285000.00),
(3, 5, 1, 165000.00),
(3, 4, 1, 210000.00),
(4, 6, 1, 210000.00);