import 'package:flutter/material.dart';
import '../models/kontak.dart';
import '../widgets/kontak_item.dart';

// Halaman untuk menampilkan daftar kontak
class KontakListPage extends StatelessWidget {
  const KontakListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak'), // Judul halaman
        centerTitle: true, // Menyusun judul agar berada di tengah
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0), // Memberikan padding di sekitar daftar
        itemCount: kontaks.length, // Menentukan jumlah item yang akan ditampilkan (jumlah kontak)
        itemBuilder: (context, index) {
          // Membangun tampilan untuk setiap item dalam daftar
          return KontakItem(kontak: kontaks[index]); // Menampilkan KontakItem untuk setiap kontak
        },
      ),
    );
  }
}
