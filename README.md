user_list_app

Aplikasi Flutter sederhana untuk menampilkan daftar pengguna yang diambil dari API [JSONPlaceholder](https://jsonplaceholder.typicode.com/users).

Instruksi

Persiapan Proyek Flutter

1. Buat Proyek Flutter Baru

   Jalankan perintah berikut di terminal untuk membuat proyek Flutter baru dengan nama user_list_app:

   sh
   flutter create user_list_app
   

2. Buka Proyek

   Buka proyek user_list_app di editor pilihan Anda (misalnya, Visual Studio Code atau Android Studio).

Menambahkan Dependensi HTTP

3. Tambahkan Dependensi http

   Tambahkan dependensi http di file pubspec.yaml untuk memungkinkan permintaan HTTP:
   dependencies:
     flutter:
       sdk: flutter
     http: ^1.2.2

4. Perbarui Dependensi

   Jalankan perintah berikut di terminal untuk memperbarui dependensi:
   flutter pub get

Membuat Model Data Pengguna
5. Buat Model Pengguna

   Buat file baru bernama user.dart di dalam folder lib dan buat model data pengguna dengan field id, name, username, dan email.

Mengambil Data dari JSONPlaceholder

6. Buat Layanan API

   Buat file baru bernama api_service.dart di dalam folder lib. Buat fungsi untuk mengambil data pengguna dari API [JSONPlaceholder](https://jsonplaceholder.typicode.com/users) menggunakan paket http. Pastikan fungsi ini mengembalikan daftar objek pengguna.

Menampilkan Data di Aplikasi

7. Modifikasi main.dart

   Modifikasi file main.dart untuk menampilkan daftar pengguna. Gunakan FutureBuilder untuk mengambil dan menampilkan data pengguna dalam bentuk daftar. Jangan lupa untuk menambahkan penanganan untuk kondisi loading, error, dan data kosong.

Mengunggah Kode Sumber ke GitHub

8. Buat Repository GitHub

   Buat repository baru di GitHub dengan nama user_list_app.

9. Unggah Kode Sumber

   Langkah-langkah untuk mengunggah kode sumber ke repository GitHub:
   sh
   cd user_list_app
   git init
   git remote add origin <URL repository GitHub Anda>
   git add .
   git commit -m "Initial commit"
   git push -u origin master



hasil screenshoot dari aplikasi yang dijalankan
![WhatsApp Image 2024-08-09 at 01 01 38_7703b214](https://github.com/user-attachments/assets/958dfc28-4db4-4ac5-b752-3c7669bf70d2)
