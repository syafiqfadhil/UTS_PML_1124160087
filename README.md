# UTS Aplikasi Mobile - Aplikasi Profil Mahasiswa

## Identitas Mahasiswa
- **Nama:** Fadhil Hidayattulloh
- **NIM:** 1124160087
- **Kelas:** Software Engineering 2
- **Program Studi:** Teknik Informatika
- **Institusi:** Institut Teknologi dan Bisnis Bina Sarana Global

## Link YouTube
- **Link YouTube:** [Tonton Video Demo Aplikasi Profil Fadhil](https://youtu.be/Vo63p0TjGOg)

## Screenshot Aplikasi

| Halaman Login | Halaman Profil | Halaman Tentang Saya | Halaman Edit Profil |
| :---: | :---: | :---: | :---: |
| ![Halaman Login](profil_app/assets/login.png) | ![Halaman Profil](profil_app/assets/profil.png) | ![Halaman Tentang Saya](profil_app/assets/tentang.png) | ![Halaman Edit Profil](soal2-profil-app/assets/edit.png) |

## Daftar Fitur
- **Login (`LoginPage`):** Validasi input email dan password sebelum masuk ke halaman utama menggunakan `Navigator.pushReplacementNamed`.
- **Profil Mahasiswa (`ProfilePage`):** Menampilkan foto dari aset lokal (`assets/Fadhil.jpg`) dengan `CircleAvatar`, biodata lengkap, kartu kontak menggunakan *reusable widget* `InfoTile`, menu samping (`Drawer`), serta pengubah tema *Light / Dark Mode*.
- **Edit Profil (`EditProfilePage`):** Formulir pembaruan data menggunakan `TextEditingController` dan validasi `GlobalKey<FormState>`, lalu mengirimkan data terbaru kembali ke halaman profil via `Navigator.pop`.
- **Tentang Saya (`AboutPage`):** Menampilkan daftar keahlian teknis, hobi, dan riwayat pendidikan menggunakan `ListView`.

## Cara Menjalankan Aplikasi
1. Clone repository ini ke komputer lokal:
   ```bash
   git clone [https://github.com/syafiqfadhil/UTS-PML-1124160087.git](https://github.com/syafiqfadhil/UTS-PML-1124160087.git)
