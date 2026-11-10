# E-Commerce Startup Humanika Store

<p align="center">
  <img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="350" alt="Laravel Logo">
</p>

<h3 align="center">A Simple E-Commerce Platform for Startup Business</h3>

<p align="center">
  Platform e-commerce berbasis web yang dirancang untuk membantu startup mengelola penjualan, produk, pelanggan, pesanan, serta laporan keuangan dalam satu sistem terintegrasi.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Laravel-Framework-FF2D20?style=for-the-badge&logo=laravel&logoColor=white">
  <img src="https://img.shields.io/badge/Blade-Template-F7523F?style=for-the-badge&logo=laravel&logoColor=white">
  <img src="https://img.shields.io/badge/Tailwind_CSS-Styling-06B6D4?style=for-the-badge&logo=tailwindcss&logoColor=white">
  <img src="https://img.shields.io/badge/MySQL-Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/WhatsApp-Fonnte-25D366?style=flat-square&logo=whatsapp&logoColor=white">
  <img src="https://img.shields.io/badge/Authentication-Laravel_Breeze-FF2D20?style=flat-square&logo=laravel&logoColor=white">
  <img src="https://img.shields.io/badge/Status-Development-orange?style=flat-square">
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square">
</p>

---

## About The Project

**E-Commerce Startup** merupakan aplikasi toko online berbasis web yang dikembangkan menggunakan Laravel. Aplikasi ini dibuat sebagai proyek pengembangan startup untuk mempelajari dan mengimplementasikan sistem transaksi digital, manajemen inventaris, autentikasi pengguna, serta pengelolaan keuangan sederhana.

Sistem ini dilengkapi dengan integrasi **Laravel Breeze** untuk autentikasi email dan **Fonnte WhatsApp Gateway** untuk mendukung pengiriman notifikasi transaksi secara otomatis melalui WhatsApp.

Aplikasi memiliki dua hak akses utama, yaitu **Admin** dan **User**, dengan fitur dan tanggung jawab yang berbeda.

## Key Features

### Admin Dashboard

Admin memiliki akses penuh untuk mengelola operasional toko melalui dashboard.

- **Product Management**
  - Menambahkan produk baru.
  - Mengedit informasi produk.
  - Menghapus produk.
  - Mengelola harga dan deskripsi produk.
  - Mengelola kategori produk.
  - Mengunggah foto produk.

- **Automatic Stock Management**
  - Mengelola jumlah stok produk.
  - Stok otomatis berkurang ketika pesanan berhasil diproses sesuai alur transaksi.
  - Monitoring ketersediaan stok.
  - Meminimalkan risiko kesalahan pencatatan inventaris.

- **Order Management**
  - Melihat seluruh pesanan pelanggan.
  - Melihat detail transaksi.
  - Mengelola status pesanan.
  - Memantau riwayat pembelian.
  - Mengelola proses pemesanan.

- **Customer Management**
  - Melihat data pelanggan.
  - Mengelola informasi customer.
  - Memantau riwayat transaksi pelanggan.

- **Financial Monitoring**
  - Monitoring pemasukan bulanan.
  - Monitoring pengeluaran bulanan.
  - Rekapitulasi pemasukan dan pengeluaran.
  - Melihat ringkasan kondisi keuangan toko.

### 🛒 User / Customer

Pengguna dapat mengakses fitur toko online untuk melakukan aktivitas belanja.

- Registrasi dan login menggunakan email.
- Autentikasi menggunakan Laravel Breeze.
- Melihat katalog produk.
- Melihat detail produk.
- Melihat harga dan ketersediaan stok.
- Melakukan pemesanan produk.
- Melihat riwayat pesanan.
- Memantau status pesanan.
- Menerima notifikasi transaksi melalui WhatsApp.

### WhatsApp Gateway Integration

Menggunakan **Fonnte WhatsApp Gateway** untuk mengintegrasikan sistem dengan layanan WhatsApp.

Fitur integrasi meliputi:

- Notifikasi pesanan baru.
- Informasi transaksi kepada customer.
- Notifikasi perubahan status pesanan.
- Pemberitahuan terkait proses pemesanan.

### Authentication & Authorization

Menggunakan Laravel Breeze sebagai sistem autentikasi.

- Register menggunakan email.
- Login dan logout.
- Email verification.
- Password reset.
- Pengelolaan session.
- Role-based access control (Admin & User).
- Pembatasan akses halaman berdasarkan role.

---

## User Roles

| Role | Access & Permissions |
|---|---|
| **Admin** | Mengelola produk, stok, pesanan, customer, pemasukan, dan pengeluaran. |
| **User** | Melihat produk, melakukan pemesanan, dan melihat riwayat transaksi. |

---

## Tech Stack

Teknologi yang digunakan dalam pengembangan aplikasi ini:

| Technology | Description |
|---|---|
| **Laravel** | Backend framework |
| **PHP** | Server-side programming |
| **Blade** | Templating engine |
| **Tailwind CSS** | UI styling framework |
| **JavaScript** | Client-side interactivity |
| **MySQL** | Relational database |
| **Laravel Breeze** | Authentication system |
| **Fonnte API** | WhatsApp Gateway integration |

---

## Installation & Setup

Ikuti langkah-langkah berikut untuk menjalankan proyek di lingkungan lokal.

### 1. Clone Repository

```bash
git clone https://github.com/alek-99/humanikastore.git

cd ecommerce-startup
```

### 2. Install Dependencies

```bash
composer install
```

### 3. Install Frontend Dependencies

```bash
npm install
```

### 4. Configure Environment

Salin file `.env.example` menjadi `.env`.

```bash
cp .env.example .env
```

Atur konfigurasi database pada file `.env`.

```env
APP_NAME="E-Commerce Startup"
APP_ENV=local
APP_DEBUG=true
APP_URL=http://localhost:8000

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=ecommerce_startup
DB_USERNAME=root
DB_PASSWORD=
```

### 5. Generate Application Key

```bash
php artisan key:generate
```

### 6. Run Database Migration

```bash
php artisan migrate
```

### 7. Build Frontend Assets

```bash
npm run build
```

Untuk development:

```bash
npm run dev
```

### 8. Run Laravel Server

```bash
php artisan serve
```

Buka aplikasi melalui:
http://127.0.0.1:8000

## Konfigurasi Fonnte
Untuk mengaktifkan integrasi WhatsApp Gateway, siapkan API Token dari Fonnte dan masukkan konfigurasi berikut ke dalam `.env`.

```env
FONNTE_TOKEN=your_fonnte_api_token
```

Pastikan token disimpan di environment variable dan tidak dibagikan ke publik.

---

## Financial Management

Sistem menyediakan fitur monitoring keuangan sederhana untuk membantu admin mengetahui kondisi finansial toko.

| Financial Data | Description |
|---|---|
| Pemasukan | Total pendapatan dari transaksi penjualan. |
| Pengeluaran | Total biaya operasional yang dicatat admin. |
| Saldo | Selisih antara total pemasukan dan pengeluaran. |
| Laporan Bulanan | Rekapitulasi keuangan berdasarkan periode bulan. |

Rumus perhitungan:

**Saldo = Total Pemasukan - Total Pengeluaran**

---

## Project Notes

> **Development Project – Tidak Untuk Production**

Proyek ini dikembangkan sebagai aplikasi simulasi dan pembelajaran pengembangan sistem e-commerce untuk kebutuhan startup.

Beberapa hal yang perlu diperhatikan:

- Aplikasi belum ditujukan untuk penggunaan bisnis skala produksi.
- Integrasi pembayaran online belum tersedia.
- WhatsApp Gateway membutuhkan API Token Fonnte yang aktif.
- Keamanan, skalabilitas, dan optimasi sistem masih dapat dikembangkan.
- Data transaksi digunakan untuk kebutuhan pengujian dan pengembangan aplikasi.

---

## Future Development

Beberapa pengembangan yang dapat ditambahkan pada versi berikutnya:

- [ ] Integrasi payment gateway.
- [ ] Wishlist produk.
- [ ] Shopping cart.
- [ ] Voucher dan diskon.
- [ ] Rating dan review produk.
- [ ] Export laporan keuangan ke Excel/PDF.
- [ ] Dashboard statistik penjualan.
- [ ] Pengiriman dan tracking pesanan.
- [ ] Multi-role dan permission management.
- [ ] Peningkatan keamanan dan performa aplikasi.

---

##  Developer

Developed with  using Laravel.

**E-Commerce Startup** — Building a simple digital commerce experience.

--
<p align="center">
  <b>Learn, Build, and Grow Your Startup 🚀</b>
</p>
