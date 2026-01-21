import 'dart:io';
import 'dart:math';
void main(){
  int percobaan=0;
  Random random = Random();
  int angka = random.nextInt(100) + 1;
  stdout.write("Pilih angka antara 1-100: ");
  String? input = stdin.readLineSync();
  int tebakan = int.parse(input!);
  while percobaan < 5{
    if tebakan == angka{
      break;
    }
    percobaan += 1;
    print("Tebakan benar ");
    } else if (tebakan < 10){
      print ("Angka terlalu kecil");
    } else if (tebakan > 100){
      print ("Angka terlalu besar");
    }else if (tebakan == angka){
      print ("Selamat, tebakan anda benar!");     
    }else{
      print ("Maaf, tebakan anda salah. Angka yang benar adalah $angka"); 
      return; 
    }

  }