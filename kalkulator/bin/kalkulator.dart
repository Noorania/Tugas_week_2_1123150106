import 'dart:io';

void main() {
  print("=== Kalkulator Sederhana Dart ===");

  stdout.write("Masukkan angka pertama: ");
  double angka1 = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan angka kedua: ");
  double angka2 = double.parse(stdin.readLineSync()!);

  print("\nPilih operasi:");
  print("1. Penjumlahan (+)");
  print("2. Pengurangan (-)");
  print("3. Perkalian (*)");
  print("4. Pembagian (/)");
  stdout.write("Pilihan (1-4): ");
  int pilihan = int.parse(stdin.readLineSync()!);

  double hasil;

  switch (pilihan) {
    case 1:
      hasil = angka1 + angka2;
      print("\nHasil: $angka1 + $angka2 = $hasil");
      break;
    case 2:
      hasil = angka1 - angka2;
      print("\nHasil: $angka1 - $angka2 = $hasil");
      break;
    case 3:
      hasil = angka1 * angka2;
      print("\nHasil: $angka1 * $angka2 = $hasil");
      break;
    case 4:
      if (angka2 != 0) {
        hasil = angka1 / angka2;
        print("\nHasil: $angka1 / $angka2 = $hasil");
      } else {
        print("\nError: Tidak bisa dibagi dengan nol!");
      }
      break;
    default:
      print("\nPilihan tidak valid!");
  }

  print("\n=== Selesai ===");
}
