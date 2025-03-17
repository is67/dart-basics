import 'dart:io';

void main() {
  // 1. Mencetak nama dengan kutip tunggal dan ganda
  String name = "Ahmad Rois";
  print("Hello, saya \"$name\"");
  print("Hello, saya '$name'");

  // 2. Deklarasi konstanta int
  const int angka = 7;
  print("Konstanta angka: $angka");

  // 3. Menghitung bunga sederhana
  stdout.write("Masukkan pokok pinjaman: ");
  double p = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan waktu (tahun): ");
  double t = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan suku bunga (%): ");
  double r = double.parse(stdin.readLineSync()!);
  double bunga = (p * t * r) / 100;
  print("Bunga sederhana: $bunga");

  // 4. Mencetak persegi dari suatu angka
  stdout.write("Masukkan angka: ");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    print('* ' * n);
  }

  // 5. Mencetak nama lengkap
  String namaDepan = "Ahmad";
  String namaBelakang = "Rois";
  print("Nama lengkap: $namaDepan $namaBelakang");

  // 6. Hasil bagi dan sisa dua bilangan bulat
  stdout.write("Masukkan bilangan pertama: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan bilangan kedua: ");
  int b = int.parse(stdin.readLineSync()!);
  print("Hasil bagi: ${a ~/ b}");
  print("Sisa bagi: ${a % b}");

  // 7. Menukar dua bilangan
  stdout.write("Masukkan bilangan pertama: ");
  int x = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan bilangan kedua: ");
  int y = int.parse(stdin.readLineSync()!);
  int temp = x;
  x = y;
  y = temp;
  print("Setelah ditukar: x = $x, y = $y");

  // 8. Menghapus semua spasi dari String
  stdout.write("Masukkan teks: ");
  String teks = stdin.readLineSync()!;
  print("Teks tanpa spasi: ${teks.replaceAll(' ', '')}");

  // 9. Konversi String ke int
  stdout.write("Masukkan angka dalam bentuk string: ");
  String strAngka = stdin.readLineSync()!;
  int angkaDariString = int.parse(strAngka);
  print("Angka setelah dikonversi: $angkaDariString");

  // 10. Menghitung pembagian tagihan
  stdout.write("Masukkan total tagihan: ");
  double totalTagihan = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan jumlah orang: ");
  int jumlahOrang = int.parse(stdin.readLineSync()!);
  double hasilTagihan = totalTagihan / jumlahOrang;
  print("Setiap orang harus membayar: $hasilTagihan");
}
