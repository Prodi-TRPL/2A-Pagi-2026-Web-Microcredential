<a id="readme-top"></a>

<!-- PROJECT HEADER -->
<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:6C63FF,50:2EC4B6,100:2D2A5E&height=230&section=header&text=MIND%20FLOOX&fontSize=62&fontColor=ffffff&animation=twinkling&fontAlignY=36&desc=Platform%20Pembelajaran%20Daring%20untuk%20Sertifikasi%20Microcredential&descAlignY=53&descSize=18" width="100%"/>

<a href="https://github.com/Prodi-TRPL/2A-Pagi-2026-Web-Microcredential">
  <img src="https://readme-typing-svg.demolab.com?font=Poppins&size=22&duration=2800&pause=900&color=6C63FF&center=true&vCenter=true&width=650&multiline=false&lines=Selamat+Datang+di+Repositori+Mind+Floox+%F0%9F%91%8B;Platform+Microcredential+Berbasis+Web;Dibangun+dengan+Laravel+%2B+Tailwind+%2B+Alpine.js;Kelompok+PBL-214+%7C+TRPL+Polibatam" alt="Typing SVG" />
</a>

<br/><br/>

<!-- TECH BADGES -->
<img src="https://img.shields.io/badge/Laravel-6C63FF?style=for-the-badge&logo=laravel&logoColor=white" />
<img src="https://img.shields.io/badge/Tailwind_CSS-2EC4B6?style=for-the-badge&logo=tailwind-css&logoColor=white" />
<img src="https://img.shields.io/badge/Alpine.js-2D2A5E?style=for-the-badge&logo=alpine.js&logoColor=white" />
<img src="https://img.shields.io/badge/MySQL-4A3F8C?style=for-the-badge&logo=mysql&logoColor=white" />

<br/>

<img src="https://img.shields.io/badge/status-in%20development-6C63FF?style=flat-square&labelColor=2D2A5E" />
<img src="https://img.shields.io/badge/versi-1.0.0-2EC4B6?style=flat-square&labelColor=2D2A5E" />
<img src="https://img.shields.io/badge/lisensi-Academic-4A3F8C?style=flat-square&labelColor=2D2A5E" />
<img src="https://img.shields.io/badge/PBL-214-6C63FF?style=flat-square&labelColor=2D2A5E" />

<br/><br/>

</div>

<img src="https://capsule-render.vercel.app/api?type=cylinder&color=0:2D2A5E,100:6C63FF&height=6&section=header" width="100%"/>

<!-- TABLE OF CONTENTS -->
<details>
  <summary><b>📑 Daftar Isi</b></summary>
  <ol>
    <li>
      <a href="#-deskripsi-umum">Deskripsi Umum</a>
      <ul>
        <li><a href="#-tech-stack">Tech Stack</a></li>
      </ul>
    </li>
    <li>
      <a href="#-panduan-instalasi--setup-proyek">Panduan Instalasi & Setup Proyek</a>
      <ul>
        <li><a href="#persiapan-perangkat-lunak-software">Persiapan Perangkat Lunak</a></li>
        <li><a href="#mengunduh-proyek-clone-repository">Mengunduh Proyek</a></li>
        <li><a href="#konfigurasi-proyek-laravel">Konfigurasi Proyek</a></li>
        <li><a href="#setup-database-mysql">Setup Database</a></li>
        <li><a href="#menjalankan-aplikasi">Menjalankan Aplikasi</a></li>
      </ul>
    </li>
    <li><a href="#-aktor--fitur-utama">Aktor & Fitur Utama</a></li>
    <li><a href="#-kesimpulan">Kesimpulan</a></li>
  </ol>
</details>

<br/>

<!-- ABOUT THE PROJECT -->
## 📖 Deskripsi Umum

**Mind Floox** adalah platform pembelajaran daring (LMS) berbasis web yang dirancang untuk memfasilitasi sertifikasi kompetensi jangka pendek (*microcredential*) bagi mahasiswa. Sistem ini mengintegrasikan empat aktor utama: **Super Admin**, **Admin Microcredential**, **Instruktur**, dan **Peserta**.

<table>
<tr>
<td width="50%" valign="top">

**Proses bisnis yang dicakup:**
- 📝 Pendaftaran dan verifikasi peserta program
- 📚 Pengelolaan kursus 14 minggu
- ✅ Evaluasi melalui tugas dan kuis

</td>
<td width="50%" valign="top">

**Nilai tambah sistem:**
- 📊 Pelacakan progres belajar secara transparan
- 🎓 Penerbitan sertifikat digital otomatis
- 🔐 Manajemen akses berbasis role

</td>
</tr>
</table>

Dibangun menggunakan **Laravel** (pola arsitektur MVC), **Tailwind CSS**, dan **Alpine.js**, aplikasi ini menghasilkan sistem pembelajaran yang responsif, aman, dan efisien.

<br/>

<details>
<summary><b>🎯 Latar Belakang</b> (klik untuk buka)</summary>
<br/>

> Mahasiswa membutuhkan perolehan kompetensi spesifik tambahan untuk kesiapan kerja, didukung oleh data riset yang menunjukkan tingginya urgensi *microcredential* bagi karier mahasiswa. Platform yang ada saat ini belum terintegrasi secara khusus dengan institusi pendidikan serta belum menyediakan sistem terpusat untuk pendaftaran, penilaian, dan pengakuan kompetensi secara resmi.

</details>

<details>
<summary><b>🚀 Tujuan</b> (klik untuk buka)</summary>
<br/>

> Membangun platform pembelajaran daring guna memudahkan pengelolaan pendaftaran, materi, evaluasi, hingga penerbitan sertifikat kompetensi mahasiswa, serta menyediakan validasi kelulusan otomatis demi menjamin keabsahan sertifikat digital.

</details>

<br/>

### 🛠️ Tech Stack

<div align="center">

<img src="https://skillicons.dev/icons?i=laravel,tailwind,mysql,js,html,css,git,github,vscode&theme=dark" />

<br/><br/>

<img src="https://img.shields.io/badge/Backend-Laravel%20(MVC)-6C63FF?style=flat-square&labelColor=2D2A5E" /><br/>
<img src="https://img.shields.io/badge/Frontend-Tailwind%20v4%20%2B%20Alpine.js-2EC4B6?style=flat-square&labelColor=2D2A5E" /><br/>
<img src="https://img.shields.io/badge/Database-MySQL-4A3F8C?style=flat-square&labelColor=2D2A5E" /><br/>
<img src="https://img.shields.io/badge/Metodologi-SDLC%20Waterfall-6C63FF?style=flat-square&labelColor=2D2A5E" />

</div>

<p align="right">(<a href="#readme-top">kembali ke atas</a>)</p>

<img src="https://capsule-render.vercel.app/api?type=rect&color=0:2EC4B6,100:6C63FF&height=4" width="100%"/>

<!-- GETTING STARTED -->
## 🚀 Panduan Instalasi & Setup Proyek

Berikut adalah panduan lengkap untuk menginstal dan menjalankan proyek Mind Floox di lingkungan lokal Anda.

---

### Persiapan Perangkat Lunak (Software)

Sebelum mulai mengelola proyek, pastikan beberapa software wajib berikut telah terinstal di komputer Anda.

#### 1. Instalasi Laragon (Local Web Server & Database)

Laragon digunakan sebagai server lokal yang sudah mencakup PHP, MySQL, dan Apache/Nginx.

1. Kunjungi situs resmi Laragon: [https://laragon.org/download/](https://laragon.org/download/)
2. Unduh versi **Laragon Full** (direkomendasikan) karena sudah lengkap dengan PHP terbaru, MySQL, dan Apache.
3. Buka file installer `.exe` yang sudah diunduh.
4. Lakukan instalasi dengan menekan **Next** hingga selesai (biarkan pengaturan secara default).
5. Buka aplikasi Laragon, lalu klik tombol **Start All** untuk menyalakan Apache dan MySQL.

#### 2. Instalasi Visual Studio Code (VS Code)

Visual Studio Code digunakan sebagai Code Editor untuk membuka dan mengedit baris kode proyek.

1. Kunjungi situs resmi VS Code: [https://code.visualstudio.com/](https://code.visualstudio.com/)
2. Unduh versi Windows (atau sesuai dengan OS Anda).
3. Jalankan installer dan ikuti proses instalasi (centang semua opsi pada menu **Select Additional Tasks** agar lebih mudah digunakan).
4. Klik **Install** dan tunggu hingga selesai.
5. Jika sudah selesai, anda bisa membuka aplikasi tersebut.

#### 3. Instalasi Git (Version Control System)

Git diperlukan untuk melakukan clone (mengunduh) repositori dari GitHub/GitLab ke komputer Anda.

1. Kunjungi situs resmi Git: [https://git-scm.com/downloads](https://git-scm.com/downloads)
2. Unduh versi terbaru untuk Windows.
3. Buka installer dan lakukan instalasi dengan menekan **Next** hingga akhir (gunakan pengaturan default).

#### 4. Instalasi Composer & Node.js

Proyek Laravel (Mind Floox) membutuhkan **Composer** untuk mengatur package PHP, serta **Node.js** untuk mengatur konfigurasi antarmuka (seperti Tailwind CSS & Alpine.js).

**Composer:**
1. Unduh di [https://getcomposer.org/download/](https://getcomposer.org/download/)
2. Jalankan `Composer-Setup.exe`, lalu Next hingga selesai.
3. Pastikan path PHP mengarah ke folder instalasi php di dalam Laragon (misal: `C:\laragon\bin\php\php-x.x.x\php.exe`).

**Node.js:**
1. Unduh versi LTS (Long Term Support) di [https://nodejs.org/](https://nodejs.org/)
2. Lakukan instalasi seperti biasa.

<p align="right">(<a href="#readme-top">kembali ke atas</a>)</p>

---

### Mengunduh Proyek (Clone Repository)

Setelah semua software siap, langkah selanjutnya adalah mengunduh kode proyek Mind Floox.

1. Buka aplikasi Laragon, lalu klik tombol **Terminal**. (Atau buka Command Prompt / PowerShell biasa).

2. Arahkan directory aktif ke dalam folder web Laragon Anda (biasanya di `C:\laragon\www` atau `E:\laragon\www`):
   ```bash
   cd C:\laragon\www
   ```

3. Lakukan proses clone repositori Mind Floox dengan perintah:
   ```bash
   git clone https://github.com/Prodi-TRPL/2A-Pagi-2026-Web-Microcredential.git mindfloox
   ```
   > 📌 Ganti URL di atas dengan tautan asli repositori Git proyek Anda jika berbeda.

4. Setelah proses selesai, masuk ke dalam folder proyek tersebut:
   ```bash
   cd mindfloox
   ```

5. Buka proyek tersebut di VS Code secara langsung melalui terminal dengan mengetikkan:
   ```bash
   code .
   ```

<p align="right">(<a href="#readme-top">kembali ke atas</a>)</p>

---

### Konfigurasi Proyek (Laravel)

Setelah VS Code terbuka, Anda harus melakukan konfigurasi proyek. Di dalam terminal VS Code, Anda bisa membukanya dengan menekan <kbd>Ctrl</kbd> + <kbd>`</kbd> (backtick).

#### 1. Instalasi Dependensi PHP dan Node.js

Jalankan tiga perintah berikut secara berurutan di terminal VS Code untuk mengunduh pustaka (library) yang dibutuhkan sistem:

```bash
composer install
```
```bash
npm install
```
```bash
npm run build
```

#### 2. Mengatur File Konfigurasi (.env)

1. Pada struktur folder di sebelah kiri VS Code, cari file bernama `.env.example`.
2. Klik kanan file tersebut, pilih **Copy**, lalu **Paste** di tempat yang sama, dan ubah namanya (**Rename**) menjadi `.env` (tanpa kata `.example`).
3. Buka file `.env` tersebut, temukan bagian konfigurasi database, dan sesuaikan isinya menjadi seperti berikut:

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=mindfloox
DB_USERNAME=root
DB_PASSWORD=
```

#### 3. Konfigurasi Key dan Storage

Jalankan kedua perintah ini di terminal VS Code:

```bash
php artisan key:generate
```
```bash
php artisan storage:link
```

> 💡 `key:generate` digunakan untuk membuat enkripsi keamanan sesi aplikasi, sedangkan `storage:link` digunakan untuk menghubungkan media (gambar, sertifikat, berkas tugas) agar bisa diakses secara publik.

#### 4. Konfigurasi Bahasa dan Zona Waktu (Opsional namun Penting)

Secara default, tanggal pada kursus akan mengikuti format bahasa Inggris. Agar format waktu (time) dan bahasa pada sistem web menjadi bahasa Indonesia, pastikan Anda telah mengubah konfigurasi berikut pada file `config/app.php`:

```php
'timezone' => 'Asia/Jakarta',
'locale' => 'id',
```

> ⚠️ **Penting:** Karena proyek ini menggunakan fitur cetak **Sertifikat PDF** (menggunakan library DOMPDF), pastikan ekstensi PHP `gd` (untuk mengolah gambar/logo di PDF) dan `intl` (untuk memformat tanggal ke bahasa Indonesia) sudah aktif di Laragon Anda.
>
> **Cara mengaktifkannya:** Klik Kanan di Laragon → **PHP** → **Extensions** → Centang `gd` dan `intl`.

<p align="right">(<a href="#readme-top">kembali ke atas</a>)</p>

---

### Setup Database (MySQL)

Karena file SQL (`mindfloox.sql`) sudah tersedia di dalam proyek, Anda perlu mengimpornya agar struktur tabel dan datanya langsung siap dipakai.

1. Buka aplikasi **Laragon**, lalu klik tombol **Database** (biasanya akan membuka aplikasi HeidiSQL atau phpMyAdmin).
2. Login ke sesi database Anda dengan pengguna `root` (biarkan password kosong jika tidak ada passwordnya).
3. Buat database baru dengan nama **`mindfloox`**.
4. Jika sudah, **import** file `.sql` database `mindfloox.sql` yang sudah tersedia di dalam folder proyek.
5. Klik **OK/Impor**.
6. Tunggu hingga seluruh tabel selesai dimuat.

<p align="right">(<a href="#readme-top">kembali ke atas</a>)</p>

---

### Menjalankan Aplikasi

Aplikasi sudah siap dijalankan! Karena ini adalah proyek **Laravel + Vite** (Tailwind CSS), Anda harus menjalankan **dua buah server** lokal secara bersamaan.

1. Pastikan **Apache** dan **MySQL** di dalam aplikasi Laragon sedang menyala (**Started**).

2. Buka terminal pada VS Code, lalu jalankan perintah PHP Artisan:
   ```bash
   php artisan serve
   ```
   > Terminal akan memunculkan tulisan `Server running on [http://127.0.0.1:8000]`.
   > Anda bisa langsung **Ctrl + Klik** pada link tersebut untuk membuka web di browser.

3. Buka **satu tab terminal baru** lagi di VS Code (dengan menekan ikon ➕ di panel terminal), lalu jalankan perintah:
   ```bash
   npm run dev
   ```
   > ⚡ Perintah ini **wajib terus menyala** selama masa pengembangan agar perubahan pada file CSS (Tailwind) maupun JavaScript dapat langsung diterapkan (Hot Module Replacement).

4. ✅ **Selesai!** Web aplikasi Mind Floox Anda sudah berhasil dijalankan secara lokal dengan desain tampilan yang penuh.

<p align="right">(<a href="#readme-top">kembali ke atas</a>)</p>

<img src="https://capsule-render.vercel.app/api?type=rect&color=0:2EC4B6,100:6C63FF&height=4" width="100%"/>

<!-- ACTORS & FEATURES -->
## 👥 Aktor & Fitur Utama

<div align="center">

| Aktor | Fitur Utama |
|:---:|---|
| 🛡️ **Super Admin** | Mengelola jenis microcredential, akun Admin Microcredential, data profil Instruktur, periode pembelajaran, dan program microcredential |
| 🧑‍💼 **Admin Microcredential** | Mengelola kursus, menugaskan Instruktur ke kursus, verifikasi pendaftaran Peserta |
| 🧑‍🏫 **Instruktur** | Mengelola materi pembelajaran, tugas, dan kuis; menilai hasil evaluasi Peserta |
| 🎓 **Peserta** | Mendaftar program, mempelajari materi, mengerjakan tugas/kuis, memantau progres, mengunduh sertifikat, memberikan rating |

</div>

<p align="right">(<a href="#readme-top">kembali ke atas</a>)</p>

<img src="https://capsule-render.vercel.app/api?type=soft&color=0:6C63FF,100:2EC4B6&height=4" width="100%"/>

<!-- CONCLUSION -->
## ✅ Kesimpulan

Aplikasi Microcredential Mind Floox berhasil dirancang sesuai spesifikasi kebutuhan untuk menjadi platform pembelajaran daring yang efisien. Melalui integrasi manajemen multi-role, pelacakan progres belajar yang transparan, serta sistem otomatisasi penerbitan sertifikat digital, aplikasi ini mampu menjawab kebutuhan institusi pendidikan dalam menyelenggarakan program penguatan kompetensi mahasiswa secara terorganisasi dan akuntabel.

<p align="right">(<a href="#readme-top">kembali ke atas</a>)</p>

<!-- FOOTER -->
<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:2D2A5E,50:6C63FF,100:2EC4B6&height=150&section=footer&animation=twinkling" width="100%"/>

<sub>Teknologi Rekayasa Perangkat Lunak — Politeknik Negeri Batam</sub>

</div>
