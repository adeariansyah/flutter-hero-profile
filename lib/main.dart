import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Tan Malaka',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFDFBF7), // warna krem
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF6B1D2F), // navbar maroon tua
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Color(0xFF2A2A2A), // warna teks deep charcoal
          ),
        ),
      ),
      home: const ProfilPahlawanPage(),
    );
  }
}

class ProfilPahlawanPage extends StatelessWidget {
  const ProfilPahlawanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arsip Tokoh', style: TextStyle(fontWeight: .bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            const SizedBox(height: 30),

            // 1. Bingkai foto
            _buildFramedImage(),
            const SizedBox(height: 20),

            // 2. Blok identitas tokoh
            _buildIdentityBlock(),
            const SizedBox(height: 20),

            // 3. Kotak kutipan
            _buildQuoteBox(),
            const SizedBox(height: 20),

            // 4. Narasi biografi
            _buildBiographyParagaph(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

Widget _buildFramedImage() {
  return Container(
    width: 180,
    height: 220,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.15),
          blurRadius: 10,
          offset: const Offset(0, 5),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        'assets/images/tan_malaka.jpg',
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey[300],
            child: const Center(
              child: Icon(Icons.person, size: 80, color: Colors.grey),
            ),
          );
        },
      ),
    ),
  );
}

Widget _buildIdentityBlock() {
  const maroonColor = Color(0xFF6B1D2F);
  const greyColor = Color(0xFF666666);
  const deepCharcoal = Color(0xFF2A2A2A);

  return Column(
    children: [
      // Nama
      const Text(
        'TAN MALAKA',
        style: TextStyle(
          fontSize: 24,
          fontWeight: .bold,
          color: deepCharcoal,
          letterSpacing: 1.2,
        ),
        textAlign: .center,
      ),
      const SizedBox(height: 8),
      // tagline
      const Text(
        'Bapak Republik dari Balik Bayang-Bayang',
        style: TextStyle(fontSize: 14, fontStyle: .italic, color: maroonColor),
        textAlign: .center,
      ),
      const SizedBox(height: 12),
      Row(
        mainAxisAlignment: .center,
        children: [
          const Icon(Icons.location_on, size: 16, color: greyColor),
          const SizedBox(width: 4),
          Text(
            'Suliki, Sumatera Barat',
            style: TextStyle(fontSize: 13, color: greyColor),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('•', style: TextStyle(color: greyColor)),
          ),
          Text('1897 – 1949', style: TextStyle(fontSize: 13, color: greyColor)),
        ],
      ),
    ],
  );
}

Widget _buildQuoteBox() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF4EBE1),
        borderRadius: .circular(12),
        border: Border.all(
          color: const Color(0xFF6B1D2F).withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: const Text(
        '"Ingatlah! Bahwa dari dalam kubur, suara saya akan lebih keras daripada dari atas bumi."\n— Tan Malaka',
        textAlign: .center,
        style: TextStyle(
          fontSize: 15,
          fontStyle: .italic,
          color: Color(0xFF6B1D2F),
          height: 1.5,
        ),
      ),
    ),
  );
}

Widget _buildBiographyParagaph() {
  const String biographyText =
      'Tan Malaka merupakan salah satu pemikir utama kemerdekaan Indonesia yang banyak bergerak di bawah tanah. Melalui karyanya yang monumental, Naar de \'Republiek Indonesia\' pada tahun 1925, beliau menjadi sosok pertama yang merumuskan gagasan dan konsep negara Republik Indonesia secara terstruktur—jauh 20 tahun sebelum Proklamasi 1945 diproklamasikan.\n\n'
      'Karena pemikirannya yang kritis dan pergerakannya yang melintasi berbagai negara di bawah ancaman kolonial, ia kerap menggunakan belasan nama samaran. Atas jasa dan dedikasi pemikirannya bagi fondasi bangsa, Presiden Soekarno menetapkan Tan Malaka sebagai Pahlawan Nasional pada tahun 1963.';

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Text(
      biographyText,
      textAlign: .justify,
      style: const TextStyle(
        fontSize: 14,
        height: 1.5,
        color: Color(0xFF2A2A2A),
      ),
    ),
  );
}
