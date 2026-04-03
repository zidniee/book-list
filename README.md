# Book Store App

Aplikasi Flutter sederhana untuk menampilkan daftar buku, detail buku, dan membaca file PDF buku langsung di dalam aplikasi.

## Deskripsi Singkat

Project ini dibuat sebagai latihan mobile development menggunakan Flutter. Alur utama aplikasi:

1. Menampilkan daftar buku pada halaman utama.
2. Menampilkan halaman detail saat item buku dipilih.
3. Membuka halaman pembaca PDF saat tombol Read the book ditekan.

## Tampilan Aplikasi (Foto Asli)

Berikut adalah representasi tampilan asli aplikasi berdasarkan foto yang Anda lampirkan:

1. **Halaman Book List**
	- Menampilkan judul halaman `Book List`.
	- Menampilkan daftar buku dengan cover, judul, dan nama penulis.
   
   ![Halaman Book List](assets/docs/WhatsApp%20Image%202026-04-03%20at%2022.54.08%20%281%29.jpeg)
2. **Halaman Reading Book**
	- Menampilkan PDF buku dalam mode scroll vertikal.
	- Tersedia ikon bookmark untuk membuka daftar bookmark PDF.
   
   ![Halaman Reading Book](assets/docs/WhatsApp%20Image%202026-04-03%20at%2022.54.08.jpeg)
3. **Halaman Detail Buku**
	- Menampilkan informasi `Title`, `Author`, dan `Description`.
	- Terdapat tombol `Back` dan `Read the book`.
   
   ![Halaman Detail Buku](assets/docs/WhatsApp%20Image%202026-04-03%20at%2022.54.09.jpeg)

## Fitur Utama

- Daftar buku menggunakan `ListView.builder`.
- Cover buku dari folder aset lokal.
- Navigasi antar halaman menggunakan `Navigator.push`.
- PDF viewer menggunakan package `syncfusion_flutter_pdfviewer`.
- Bookmark view PDF dapat dibuka dari app bar.

## Struktur Halaman

- `BookListScreen`: halaman daftar buku.
- `BookDetailScreen`: halaman detail buku.
- `ReadingBookFile`: halaman pembaca PDF.

## Dependensi

Dependensi utama di project ini:

- `flutter`
- `syncfusion_flutter_pdfviewer`

## Cara Menjalankan Project

1. Pastikan Flutter SDK sudah terpasang.
2. Jalankan perintah berikut di root project:

```bash
flutter pub get
flutter run
```

## Lokasi Asset

- Cover buku: `assets/images/`
- File PDF buku: `assets/books/`
- Screenshot dokumentasi: `assets/docs/`

## Catatan

- Data buku saat ini masih ditulis langsung di file `lib/main.dart`.
- Untuk pengembangan lanjutan, data buku bisa dipindahkan ke model dan file JSON/database agar lebih rapi.
