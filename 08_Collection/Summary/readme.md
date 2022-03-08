# Advance Function - Async-Awati

## Async-Await

- Menjalankan beberapa proses tanpa perlu menunggu
- Proses ditulis dalam bentuk fungsi
- Await akan menunggu hingga proses Async selesai

Contoh :

```dart
void P1(){
    Future.delayed(Duration(seconds:), (){
        print('ini P1');
    });
}

void P2 (){
    print('ini P2');
}

void main(){
    P1();
    P2();
}
```

<p align="justify">Pada code diatas menggunakan asynchronous dimana dikedua fungsi tersbut terdapat perbedaan, pada fungsi P1 ketika dijalan akan keluar belakangan dikarenakan memiliki delay 1 detik sedangkan fungsi P2 ketika dijalankan akan keluar terlebih dahulu karena tidak memiliki delay sama sekali.</p>

<p align= "justify">Kita dapat menggunakan keyword async-await dengan tujuan dimana kita bisa menuliskan proses asynchronous layaknya proses synchronous. proses secara synchronus yaitu ketika kode program dijalankan secara berurutan dari atas hingga bawah.jika terdapat 2 baris kode, kode ke 2 tidak dapat dieksekusi sebelum kode 1 selesai. </p>

Contoh :

```dart
Future<void> P1() async{
    await Future.delayed(Duration(seconds:), (){
        print('ini P1');
    });
}

void P2 (){
    print('ini P2');
}

void main() async{
    await P1();
    P2();
}
```

## Tipe data future

 <p align="justify">Dengan menggunakan future kita dapat membuat suatu proses berjalannya fungsi bisa diberi waktu atau durasi. Jika kita ingin mengembalikan data retrun dari dari object future kita memerlukan keyword async untuk menjalankan proses programnya, karena future sendiri berjalan secara asynchronous.</p>

## Collection

Collection adalah struktur data yang lebih canggih untuk menangani masalah yang lebih komplex, collection dapat menyimpan data atau object lain pada suatu tempat. Contoh collection :

- <strong>List</strong> : Dapat menyimpan data secara berbaris dan setiap data didalamnya memiliki index.
- <strong>Map</strong> : Map menyimpan datanya dengan format key-value yang dimana key berfungsi layaknya index pada list.
