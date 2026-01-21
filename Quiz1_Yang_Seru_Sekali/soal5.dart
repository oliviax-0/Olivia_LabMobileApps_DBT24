import 'dart:io';
import 'dart:math';

class Ujian {
  void nilaiData() {
    String namaSiswa;
    int nilaiSiswa;
    List<String> nama = [];
    List<int> nilai = [];
     for (var i = 0; i < 3; i++) {
    }
    stdout.write("Masukkan nama siswa: ");
    namaSiswa = stdin.readLineSync()!;
    stdout.write("Masukkan nilai siswa: ");
    nilaiSiswa = int.parse(stdin.readLineSync()!);
    nama.add(namaSiswa);
    nilai.add(nilaiSiswa);
    print("Nama Siswa: $namaSiswa", "Nilai Siswa: $nilaiSiswa");
    print('rata-rata nilai siswa adalah: ' % HitungRataRata());
  }

  void tambahnilai(int nilai) {
    int totalNilai = 0;
    int totalSiswa = 0;
    totalNilai = nilai;
    totalSiswa += 1;

    num HitungRataRata() {
      return totalNilai / totalSiswa;
    }
  }
}

void main() {
  Ujian avgnilai = Ujian();
  avgnilai.nilaiData();
}
