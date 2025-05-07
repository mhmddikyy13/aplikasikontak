import 'package:flutter/material.dart';
import 'pages/kontak_list_page.dart';

void main() {
  runApp(const AplikasiKontakApp());
}

class AplikasiKontakApp extends StatelessWidget {
  const AplikasiKontakApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kontak', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: true, // Menggunakan Material 3 untuk desain
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), // Menentukan warna tema dengan warna biru sebagai acuan
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Tema untuk judul dengan ukuran besar dan tebal
          bodyLarge: TextStyle(fontSize: 16), // Tema untuk tubuh teks dengan ukuran standar
        ),
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), // Sudut atas kanan melengkung
              bottomLeft: Radius.circular(16), // Sudut bawah kiri melengkung
            ),
          ),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12), // Margin untuk card
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Tema gelap
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.dark), // Tema gelap dengan warna biru
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12), // Margin untuk card
        ),
      ),
      themeMode: ThemeMode.system,
      home: const KontakListPage(),
    );
  }
}
