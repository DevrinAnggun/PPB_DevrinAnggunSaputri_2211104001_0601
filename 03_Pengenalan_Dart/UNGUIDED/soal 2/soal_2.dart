import 'dart:io';

void main() {
  // Ask the user to input the number of rows for the pyramid
  stdout.write('Masukkan panjang piramida: ');
  int rows = int.parse(stdin.readLineSync()!);

  // Loop to print the pyramid
  for (int i = 1; i <= rows; i++) {
    // Print spaces before stars
    for (int j = 1; j <= rows - i; j++) {
      stdout.write(' ');
    }
    // Print stars
    for (int k = 1; k <= 2 * i - 1; k++) {
      stdout.write('*');
    }
    // Move to the next line after each row
    print('');
  }
}
