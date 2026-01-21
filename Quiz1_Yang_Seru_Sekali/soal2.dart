import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Pilih Batu,Gunting,atau Kertas: ');
  String? user = stdin.readLineSync();
  List<String> pilihan = ['Batu', 'Gunting', 'Kertas'];
  String comp = pilihan[Random().nextInt(3)];
  print("User: $user, Computer: $comp");
  if (user == comp) {
    print("Seri");
  } else if ((user == 'Batu' && comp == 'Gunting') ||
      (user == 'Gunting' && comp == 'Kertas') ||
      (user == 'Kertas' && comp== 'Batu')) {
    print("Kamu Menang");
  } else {
    print("Kamu Kalah");
  }
}
