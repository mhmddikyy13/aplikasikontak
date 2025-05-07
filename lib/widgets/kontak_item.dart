import 'package:flutter/material.dart';
import '../models/kontak.dart';
import 'my_button.dart';

// Widget KontakItem yang menerima data kontak untuk ditampilkan
class KontakItem extends StatefulWidget {
  final Kontak kontak;

  // Konstruktor menerima objek Kontak
  const KontakItem({super.key, required this.kontak});

  @override
  State<KontakItem> createState() => _KontakItemState();
}

class _KontakItemState extends State<KontakItem> {
  // Variabel untuk melacak status apakah kontak sedang diperluas
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0), // Margin vertikal antar item
      child: AnimatedSize(
        duration: const Duration(milliseconds: 300), // Durasi animasi saat ukuran berubah
        child: Column(
          children: [
            // Tampilan informasi dasar kontak
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(widget.kontak.imageAsset), // Menampilkan gambar avatar
                radius: 28, // Ukuran avatar
              ),
              title: Text(widget.kontak.nama), // Nama kontak
              subtitle: Text(widget.kontak.jenisKelamin), // Jenis kelamin kontak
              trailing: MyButton(
                expanded: expanded, // Status expanded untuk mengubah tampilan tombol
                onPressed: () {
                  setState(() {
                    expanded = !expanded; // Toggle status expanded saat tombol ditekan
                  });
                },
              ),
            ),
            // Tampilan detail kontak yang muncul saat expanded == true
            if (expanded)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Text('Nomor:', style: TextStyle(fontWeight: FontWeight.bold)), // Label nomor
                    const SizedBox(width: 8), // Jarak antar teks
                    Text(widget.kontak.nomor), // Menampilkan nomor kontak
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
