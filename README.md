# Praktikum Pemrograman Mobile - Profil Pahlawan Nasional

Aplikasi profil interaktif berbasis Flutter yang diadaptasi dari materi praktikum _UI Component Layout_. Proyek ini mengangkat tokoh **Tan Malaka** dengan mengimplementasikan eksplorasi mendalam terhadap widget **`Text`**, **`TextAlign`**, dan **`Image`** menggunakan pendekatan desain _Vintage Warm / Editorial Profile_.

## 🎨 Konsep UI & Implementasi Materi

Alih-alih mengikuti tata letak standar secara kaku, aplikasi ini memanfaat tata letak editorial modern yang merefleksikan karakter historis tokoh.

### 1. Penataan Gambar (`Image`) & Framing

- **Pendekatan**: Mengabaikan penggunaan gambar _full-width_ (tepi-ke-tepi) untuk menjaga proporsi asli potret sejarah tokoh serta menghindari pemotongan (_cropping_) area wajah.

- **Implementasi**: Foto potret diletakkan dalam bingkai bersudut membulat (_rounded radius_) dengan _padding_ proporsional dan bayangan lembut (_soft elevation shadow_).

### 2. Strategi Perataan Teks (`TextAlign`)

Aplikasi ini menggabungkan variasi perataan teks untuk membangun hierarki visual yang jelas:

- **`TextAlign.center`**:
  - **Nama Tokoh & Subjudul**: Memberikan efek simetris dan menjadi pusat perhatian utama (_eyecatcher_) di bawah foto.

  - **Kotak Kutipan (_Quote Box_)**: Diletakkan di dalam _container_ khusus dengan latar krem-emas tipis dan teks miring (_italic_) untuk menegaskan pesan moral legendaris tokoh.

- **`TextAlign.justify`**:
  - **Paragraf Biografi**: Digunakan pada narasi utama agar sisi kiri dan kanan baris teks lurus rapi, memberikan impresi membaca halaman majalah atau buku dokumenter sejarah.

### 3. Skema Warna (_Color Palette_)

| Elemen              | Kode Warna / Name           | Deskripsi Visual                                                       |
| ------------------- | --------------------------- | ---------------------------------------------------------------------- |
| **Background**      | `#FDFBF7` (Soft Warm Cream) | Menggantikan warna putih polos agar terkesan seperti kertas arsip tua. |
| **AppBar & Accent** | `#6B1D2F` (Deep Maroon)     | Memberikan kesan ketegasan, keberanian, dan nuansa sejarah.            |
| **Teks Utama**      | `#2A2A2A` (Deep Charcoal)   | Memudahkan keterbacaan (_readability_) tanpa kesan kaku hitam pekat.   |
| **Quote Container** | `#F4EBE1` (Warm Gold Tint)  | Memisahkan blok kutipan secara kontras namun tetap lembut di mata.     |

## 🛠️ Struktur Berkas Proyek

```
.
├── assets/
│   └── images/
│       └── tan_malaka.jpg      # Berkas aset foto pahlawan
├── lib/
│   └── main.dart              # Kode utama UI aplikasi Flutter
├── pubspec.yaml               # Konfigurasi aset dan dependensi
└── README.md                  # Dokumentasi praktikum

```

## 🚀 Cara Menjalankan Aplikasi

1. **Clone / Buka Proyek**:
   Buka terminal di dalam direktori proyek utama.

2. **Bersihkan dan Ambil Dependensi**:

   ```
   flutter clean
   flutter pub get

   ```

3. **Jalankan Aplikasi**:

   ```
   flutter run

   ```
