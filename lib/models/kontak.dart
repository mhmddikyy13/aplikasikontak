// Kelas Kontak untuk menyimpan informasi kontak
class Kontak {
  final String nama;         // Nama kontak
  final String jenisKelamin; // Jenis kelamin kontak
  final String nomor;        // Nomor telepon kontak
  final String imageAsset;   // Lokasi file gambar kontak

  Kontak({
    required this.nama,
    required this.jenisKelamin,
    required this.nomor,
    required this.imageAsset,
  });
}

// Daftar kontak yang berisi beberapa objek Kontak
final List<Kontak> kontaks = [
  Kontak(nama: 'dandi', jenisKelamin: 'Laki-laki', nomor: '089538136233', imageAsset: 'assets/images/dandi.jpg'),
  Kontak(nama: 'dikyelek', jenisKelamin: 'Laki-laki', nomor: '089123849743', imageAsset: 'assets/images/dikyelek.jpg'),
  Kontak(nama: 'ff aldi', jenisKelamin: 'Laki-laki', nomor: '089522370012', imageAsset: 'assets/images/ff aldi.jpg'),
  Kontak(nama: 'ff barno', jenisKelamin: 'Laki-laki', nomor: '0895204765298', imageAsset: 'assets/images/ff barno.jpg'),
  Kontak(nama: 'pacar01', jenisKelamin: 'Perempuan', nomor: '0892327540123', imageAsset: 'assets/images/pacar01.jpg'),
  Kontak(nama: 'selingkuhan', jenisKelamin: 'Perempuan', nomor: '0897348720910', imageAsset: 'assets/images/selingkuhan.jpg'),
  Kontak(nama: 'pacar02', jenisKelamin: 'Perempuan', nomor: '0823993475939', imageAsset: 'assets/images/pacar02.jpg'),
  Kontak(nama: 'teman baik', jenisKelamin: 'Laki-laki', nomor: '0893247724784', imageAsset: 'assets/images/temanbaik.jpg'),
  Kontak(nama: 'ipan mancing', jenisKelamin: 'Laki-laki', nomor: '0892378347192', imageAsset: 'assets/images/ipan mancing.jpg'),
];
