# uts_mobile
# 🌍 Cerita Kita

Aplikasi mobile berbasis **Flutter** yang menampilkan artikel berita bertema perjalanan dan pariwisata.  
Didesain menggunakan **Figma** dan diimplementasikan dengan tampilan **modern, minimalis**, serta mendukung **mode terang & gelap**.

---

## 📱 Deskripsi Singkat

**Blog de Viagem** dikembangkan sebagai contoh proyek aplikasi mobile sederhana yang menggabungkan konsep:
- Desain antarmuka dari Figma
- Penggunaan data dummy (JSON lokal)
- Navigasi antarhalaman (Home → Detail)
- Pengaturan tema dinamis (Light / Dark Mode)

Aplikasi ini cocok digunakan untuk demonstrasi konsep **UI/UX** dan **pengembangan Flutter dasar** dengan arsitektur modular.

---

## 🎯 Tujuan Proyek

- Mengimplementasikan hasil desain Figma ke aplikasi Flutter
- Menampilkan daftar artikel dan halaman detail berita
- Menerapkan sistem tema ganda (light & dark)
- Menunjukkan struktur folder dan widget modular

---

## 🧩 Fitur Utama

- 🔆 **Light & Dark Mode** (bisa diganti manual)
- 📰 **Daftar Artikel & Detail Berita**
- 🧭 **Navigasi Multi-Halaman (Routes)**
- 🧱 **Desain Modular (Models, Screens, Widgets)**
- 📄 **Data Dummy dari JSON (`assets/news.json`)**

---

## 🗂️ Struktur Folder
lib/
\n\nmodels/
    article.dart # Model artikel
\n\nscreens/
    login_screen.dart # Halaman login
    home_screen.dart # Halaman utama
    detail_screen.dart # Halaman detail berita
  widgets/
    article_card.dart # Komponen tampilan artikel
  theme/
    app_theme.dart # Konfigurasi light & dark mode
  main.dart # Entry point aplikasi
assets/
  news.json # Data dummy artikel
  images/bg_login.jpg # Background halaman login

## ⚙️ Cara Menjalankan Proyek
1. Clone/Download Repository
2. Jalankan flutter packages dengan "flutter pub get"
3. Jalankan aplikasi

