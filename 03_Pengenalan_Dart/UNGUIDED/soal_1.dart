import 'dart:io';

String cekNilai(int nilai) {
  if (nilai > 70) {
    return "Nilai A";
  } else if (nilai > 40 && nilai <= 70) {
    return "Nilai B";
  } else if (nilai > 0 && nilai <= 40) {
    return "Nilai C";
  } else {
    return "";
  }
}

void main() {
  // Meminta input dari user
  stdout.write("Masukkan nilai: ");
  int? nilai = int.parse(stdin.readLineSync()!); // Membaca input dari user

  // Mendapatkan hasil dari fungsi cekNilai
  String hasil = cekNilai(nilai);

  // Menampilkan hasil
  if (hasil.isNotEmpty) {
    print("$nilai merupakan $hasil");
  } else {
    print("Nilai tidak valid.");
  }
}
