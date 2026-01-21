import 'dart:io';
import 'dart:math';

void main() {
  int percobaan = 1;
  Random random = Random();
  int angka = random.nextInt(100) + 1;
  stdout.write("Pilih angka antara 1-100: ");
  int tebakan = int.parse(stdin.readLineSync()!);
  while (tebakan != angka) {
    if (tebakan < angka) {
      print("tebakan terlalu kecil");
      percobaan += 1;
    } else if (tebakan > angka) {
      print("tebakan terlalu besar");
      percobaan += 1;
    }
    stdout.write("Pilih angka antara 1-100: ");
    tebakan = int.parse(stdin.readLineSync()!);
  }
  print("tebakan benar, angkanya adalah $tebakan");
  print("jumlah percobaan: $percobaan");
}
