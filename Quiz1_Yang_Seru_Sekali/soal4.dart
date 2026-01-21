import "dart:io";
void main(){
  List<int> a = [1,2,3,5,7,9,11,13,17,19];
  List<int> b = [];
  stdout.write("Masukkan angka: ");
  String? input = stdin.readLineSync();
  int angka = int.parse(input!);
  for (var i in a){
   if (angka%i==0){
     b.add(i);
   }
  }
  print (b);
}
