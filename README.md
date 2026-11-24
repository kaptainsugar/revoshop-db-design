# RevoShop Database Design

Desain skema database relasional PostgreSQL untuk platform e-commerce **RevoShop**, mencakup manajemen pengguna, kategori produk, produk, pesanan, dan item pesanan.

## Struktur Repository

- `schema.sql` — Definisi seluruh tabel (`users`, `categories`, `products`, `orders`, `order_items`), tipe data, Primary Key, dan Foreign Key.
- `seed.sql` — Data sampel awal untuk mengisi seluruh tabel.
- `queries.sql` — Kumpulan query untuk menguji data dan relasi antar tabel.
- `.gitignore` — Daftar file/folder yang diabaikan oleh Git.

## Prasyarat

- **PostgreSQL** (versi 14 atau lebih baru)
- **pgAdmin 4** (atau `psql` CLI)

## Cara Setup & Menjalankan Database Secara Lokal

### 1. Clone Repository
```bash
git clone [https://github.com/](https://github.com/)kaptainsugar/revoshop-db-design.git
cd revoshop-db-design