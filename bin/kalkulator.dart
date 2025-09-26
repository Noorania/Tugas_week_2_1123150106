import 'dart:io';

double _readNumber(String label) {
  while (true) {
    stdout.write('$label: ');
    final input = stdin.readLineSync();
    if (input == null) continue;

    final value = double.tryParse(input.trim());
    if (value != null) return value;

    print('Input tidak valid. Masukkan angka.');
  }
}

void main() {
  while (true) {
    print('\n=== Kalkulator Sederhana ===\n');
    print('1) Tambah');
    print('2) Kurang');
    print('3) Kali');
    print('4) Bagi');
    print('5) Keluar\n');
    stdout.write('Pilih [1-5]: ');

    final pilih = stdin.readLineSync()?.trim();

    if (pilih == '5') {
      print('Bai bai honey!');
      return;
    }

    final a = _readNumber('Masukkan angka pertama');
    final b = _readNumber('Masukkan angka kedua');

    switch (pilih) {
      case '1':
        double hasil = tambahdong(a, b);
        print('Hasil: ${a + b}');
        break;
      case '2':
        double hasil = kurangdong(a, b);
        print('Hasil: ${a - b}');
        break;
      case '3':
        double hasil = kalidong(a, b);
        print('Hasil: ${a * b}');
        break;
      case '4':
        double hasil = bagidong(a, b);
        if (b == 0) {
          print('Error: Tidak bisa dibagi dengan nol.');
        } else {
          print('Hasil: ${a / b}');
        }
        break;
      default:
        print('Pilihan tidak dikenal.');
    }
  }
}

double tambahdong(double a, double b) {
  return a + b;
}

double kurangdong(double a, double b) {
  return a - b;
}

double kalidong(double a, double b) {
  return a * b;
}

double bagidong(double a, double b) {
 return a/b;
}


