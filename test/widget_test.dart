import 'package:flutter_test/flutter_test.dart';

import 'package:aplikasikontak/main.dart';

void main() {
  testWidgets('Aplikasi memuat halaman daftar kontak', (WidgetTester tester) async {
    // Build aplikasi
    await tester.pumpWidget(const AplikasiKontakApp());

    // Verifikasi bahwa teks 'Kontak' muncul di AppBar
    expect(find.text('Kontak'), findsOneWidget);
  });
}
