// import 'dart:io';

// void main() {
//   stdout.write("Masukan nilai :");
//   int x, y, n = int.parse(stdin.readLineSync()!);

//   for (int x = 1; x <= n; x++) {
//     for (int y = 1; y <= n; y++) {
//       if (x == y || y == n - x + 1) {
//         print('');
//       } else {
//         print('y');
//       }
//     }
//   }
// }

// void main() {
//   for (int i = 1; i <= 5; i++) {
//     for (int j = 5; j >= i; j--) {
//       print(j);
//     }
//   }
// }

void nilai(panjang) {
  var hasil = '';
  for (int i = 0; i < panjang; i++) {
    for (int j = 0; j <= i; j++) {
      hasil += '1';
    }
    hasil += '\n';
  }
  print(hasil);
}

void main() {
  nilai(5);
}
