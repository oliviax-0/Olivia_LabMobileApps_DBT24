import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Pilih Batu,Gunting,atau Kertas: ');
  String? userInput = stdin.readLineSync();
  List<String> choices = ['Batu', 'Gunting', 'Kertas'];
  String compChoice = choices[Random().nextInt(3)];
  print("User choice: $userInput, Computer choice: $compChoice");
  if (userInput == compChoice) {
    print("Seri");
  } else if ((userInput == 'Batu' && compChoice == 'Gunting') ||
      (userInput == 'Gunting' && compChoice == 'Kertas') ||
      (userInput == 'Kertas' && compChoice == 'Batu')) {
    print("Kamu Menang");
  } else {
    print("Kamu Kalah");
  }
}
