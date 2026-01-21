import "dart:io";

void main() {
  List<int> a = [1, 2, 3, 5, 7, 9, 11, 13, 17, 19];
  stdout.write("Masukkan angka: ");
  String? input = stdin.readLineSync();
  int angka = int.parse(input!);
  if (a.contains(angka)) {
    print("$angka adalah bilangan prima");
  } else {
    print("$angka bukan bilangan prima");
  }
}
