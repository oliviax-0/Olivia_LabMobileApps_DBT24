import 'dart:io';

void main(){
  stdout.write("Masukkan angka: ");
  int angka = int.parse(stdin.readLineSync()!);
  List<int> faktor = [];
  for (int i = 1; i <= angka; i++){
    if (angka % i == 0){
      faktor.add(i);  }
  }
 int jumlah = 0;
  for (var i in faktor){
    jumlah += i;
  if (jumlah == angka){
    print("$angka adalah bilangan sempurna");
    break;
  } else if (jumlah>angka){
    print("bukan bilangan sempurna");
    break;
  }}
  }