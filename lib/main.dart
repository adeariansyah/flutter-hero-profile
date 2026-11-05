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
      body: const Center(child: Text('Memuat profil...')),
    );
  }
}
