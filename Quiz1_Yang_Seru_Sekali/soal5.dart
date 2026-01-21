import 'dart:io';

void main() {
  Ujian nilai = Ujian();
  nilai.nilaiData();
}

class Ujian {
  void nilaiData() {
    String namaSiswa;
    int nilaiSiswa;
    List<String> nama = [];
    List<int> nilai = [];
    for (var i = 0; i < 3; i++) {
      stdout.write("Masukkan nama siswa: ");
      namaSiswa = stdin.readLineSync()!;
      stdout.write("Masukkan nilai siswa: ");
      nilaiSiswa = int.parse(stdin.readLineSync()!);
      tambahnilai(nilaiSiswa);
      nama.add(namaSiswa);
      nilai.add(nilaiSiswa);
      print("Nama Siswa: $namaSiswa Nilai Siswa: $nilaiSiswa");
    }
    print("rata-rata nilai siswa adalah: ${avgRata()}");
  }

  int totalNilai = 0;
  int totalSiswa = 0;
  void tambahnilai(int nilai) {
    totalNilai = nilai;
    totalSiswa += 1;
  }

  num avgRata() {
    return totalNilai / totalSiswa;
  }
}
