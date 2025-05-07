import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final bool expanded;
  final VoidCallback onPressed;


  const MyButton({super.key, required this.expanded, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed, // Menentukan aksi yang dilakukan saat tombol ditekan
      icon: Icon(expanded ? Icons.expand_less : Icons.expand_more),
      tooltip: 'Lihat nomor kontak',
    );
  }
}
