import 'dart:io';

// Fungsi untuk mengecek apakah bilangan merupakan bilangan prima
bool cekPrima(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  // Meminta input dari user
  stdout.write("Masukkan bilangan bulat: ");
  int? bilangan = int.parse(stdin.readLineSync()!); // Membaca input dari user

  // Mengecek apakah bilangan prima atau bukan
  if (cekPrima(bilangan)) {
    print("$bilangan adalah bilangan prima");
  } else {
    print("$bilangan bukan bilangan prima");
  }
}
