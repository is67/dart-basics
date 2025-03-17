import 'dart:io';
import 'dart:math';

// 1. Menentukan kelayakan memilih berdasarkan usia
void cekKelayakanMemilih() {
  stdout.write("Masukkan usia Anda: ");
  int usia = int.parse(stdin.readLineSync()!);
  if (usia >= 17) {
    print("Anda memenuhi syarat untuk memilih.");
  } else {
    print("Anda belum cukup umur untuk memilih.");
  }
}

// 2. Menentukan apakah angka positif, negatif, atau nol (switch-case)
void cekAngka() {
  stdout.write("Masukkan sebuah angka: ");
  int angka = int.parse(stdin.readLineSync()!);
  switch (angka.sign) {
    case 1:
      print("Angka tersebut adalah positif.");
      break;
    case -1:
      print("Angka tersebut adalah negatif.");
      break;
    case 0:
      print("Angka tersebut adalah nol.");
      break;
  }
}

// 3. Menghitung faktorial dengan perulangan while
void hitungFaktorial() {
  stdout.write("Masukkan angka untuk dihitung faktorialnya: ");
  int angka = int.parse(stdin.readLineSync()!);
  int hasil = 1;
  int i = angka;
  while (i > 0) {
    hasil *= i;
    i--;
  }
  print("Faktorial dari $angka adalah $hasil");
}

// 4. Permainan menebak angka (1-10) dengan do-while
void tebakAngka1_10() {
  int angkaBenar = Random().nextInt(10) + 1;
  int tebakan;
  do {
    stdout.write("Tebak angka (1-10): ");
    tebakan = int.parse(stdin.readLineSync()!);
    if (tebakan < angkaBenar) {
      print("Terlalu kecil!");
    } else if (tebakan > angkaBenar) {
      print("Terlalu besar!");
    }
  } while (tebakan != angkaBenar);
  print("Selamat! Anda menebak angka yang benar.");
}

// 5. Mencetak daftar dalam urutan terbalik (for-in)
void cetakDaftarTerbalik() {
  List<String> daftar = ["apel", "pisang", "ceri", "durian"];
  print("Daftar dalam urutan terbalik:");
  for (var item in daftar.reversed) {
    print(item);
  }
}

// 6. Mengecek tahun kabisat dengan if-else
void cekTahunKabisat() {
  stdout.write("Masukkan tahun: ");
  int tahun = int.parse(stdin.readLineSync()!);
  if ((tahun % 4 == 0 && tahun % 100 != 0) || (tahun % 400 == 0)) {
    print("$tahun adalah tahun kabisat.");
  } else {
    print("$tahun bukan tahun kabisat.");
  }
}

// 7. Menentukan hari kerja atau akhir pekan (switch-case)
void cekHariKerja() {
  stdout.write("Masukkan nama hari (contoh: Senin): ");
  String hari = stdin.readLineSync()!.toLowerCase();
  switch (hari) {
    case "senin":
    case "selasa":
    case "rabu":
    case "kamis":
    case "jumat":
      print("$hari adalah hari kerja.");
      break;
    case "sabtu":
    case "minggu":
      print("$hari adalah akhir pekan.");
      break;
    default:
      print("Hari tidak valid.");
  }
}

// 8. Menghitung jumlah digit dari sebuah angka (while)
void hitungJumlahDigit() {
  stdout.write("Masukkan sebuah angka: ");
  int angka = int.parse(stdin.readLineSync()!);
  int jumlahDigit = 0;
  int temp = angka.abs();
  while (temp > 0) {
    temp ~/= 10;
    jumlahDigit++;
  }
  print("Jumlah digit dalam angka $angka adalah $jumlahDigit.");
}

// 9. Permainan tebak angka (1-100) dengan do-while
void tebakAngka1_100() {
  int angkaBenar = Random().nextInt(100) + 1;
  int tebakan;
  do {
    stdout.write("Tebak angka (1-100): ");
    tebakan = int.parse(stdin.readLineSync()!);
    if (tebakan < angkaBenar) {
      print("Terlalu kecil!");
    } else if (tebakan > angkaBenar) {
      print("Terlalu besar!");
    }
  } while (tebakan != angkaBenar);
  print("Selamat! Anda menebak angka yang benar.");
}

// 10. Mencetak daftar kata dan panjangnya (for-in)
void cetakKataDanPanjang() {
  List<String> kataList = ["dart", "flutter", "coding", "programming"];
  for (var kata in kataList) {
    print("$kata (${kata.length} huruf)");
  }
}

// Menjalankan semua fungsi di satu file
void main() {
cekKelayakanMemilih();
cekAngka();
  hitungFaktorial();
  tebakAngka1_10();
  cetakDaftarTerbalik();
  cekTahunKabisat();
  cekHariKerja();
  hitungJumlahDigit();
  tebakAngka1_100();
  cetakKataDanPanjang();
}
