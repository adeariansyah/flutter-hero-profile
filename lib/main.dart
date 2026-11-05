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
      appBar: AppBar(title: const Text('Jejak Sejarah: Tan Malaka')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            const SizedBox(height: 30),

            // 1. Bingkai foto
            _buildFramedImage(),
            const SizedBox(height: 20),

            // 2. Blok identitas tokoh
            // _buildIdentityBlock(),
            const SizedBox(height: 20),

            // 3. Kotak kutipan
            // _buildQuoteBox(),
            const SizedBox(height: 20),

            // 4. Narasi biografi
            // _buildBiographyParagaph(),
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
