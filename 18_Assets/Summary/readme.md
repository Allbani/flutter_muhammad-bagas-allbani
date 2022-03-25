# Assets

## Assets

<p align="justify">Assets adalah sebuah tempat penyimpanan lokal file yang berisi gambar, icon, suara, video, dll. File yang telah ditambah kedalam folder aplikasi yang nantinya dapat digunakan untuk menampilkan gambar, icon, suara, video, dll tanpa menggunakan koneksi internet.</p>

Mengetahui letak assets :

<p align="justify">Letak assets berada pada suatu file yang bernama <bold>pubspec.yaml</bold> setelah itu kita scrool kebawah sampai menemukan tulisan <bold>assets</bold> lalu lakukan uncomment, dan tulis assets menggunakan karakter "/" untuk memasukan semua assets</p>

## Image

<p align="justify">Dengan adanya image atau gambar dapat mempercantik tampilan aplikasi yang sedang kita buat dan untuk menampilkan image tidak hanya dari lokal assets saja, tetapi bisa juga kita mengambil image atau gambar dari internet dengan cara:</p>

```dart
class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        childern: [
            image.network(//masukkan link gambar yang telah disalin dari)
        ]
    );
  }
}
```

## Font

<p align="justify">Dengan adanya font kita bisa membuat tulisan dalam aplikasi kita menjadi lebih cantik. Penggunaan font yang lebih mudah dan simple kita bisa menggunakan package tambahan yaitu berupa GoogleFont yang bisa kita lihat pada "https://pub.dev/". Cara penggunaan googlefont juga mudah, dapat diliat contoh dibawah ini:</p>

```dart
import 'package:google_fonts/google_fonts.dart';

class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        'hallo',
        style: GoogleFont.poppins()
    );
  }
}
```
