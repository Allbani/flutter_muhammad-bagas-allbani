# Introduction Flutter Widget

## Stateless Widget

<p align="justify"> Stateless Widget adalah widget yang hanya bertugas menampilkan sesuatu yang bersifat statis, tanpa adanya perubahan data dari waktu ke waktu. Pada intinya tampilan Statles Widget hanya seperti itu saja dan tidak ada perubahan state aplikasi.</p>

Contoh Stateless Widget :

```dart
class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

## Statefull Widget

<p align="justify">Statefull Widget adalah Widget yang memiliki sifat dinamis atau dapat berubah - ubah. Berbeda dengan Stateless Widget. Statefull Widget dapat mengupdate tampilan, merubah warna, menambah jumlah baris. Pada initnya Widget yang berada di Statefull Widget ini dapat berubah.</p>

Contoh Statefull Widget

```dart
class name extends StatefulWidget {
  name({Key? key}) : super(key: key);

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

## Scaffold

<p align="justify">Scaffold adalah Widget utama untuk membuat halaman pada flutter. Scaffold memiliki beberapa parameter yang bisa digunakan seperti AppBar unutk membuat AppBar, body untuk bagian tubuhnya, backgorund color untuk mengganti warna latar belakangnya.</p>

Contoh Scaffold :

```dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgorundColor: Colors.green,
            title: Text('Home Page').
        ),
    );
  }
}
```

<p align="justify">Nah pada code diatas dapat kita lihat bahwa pada widget class diawali dengan huruf kapital, pada code diatas juga terdapat beberapa widget selain scaffold, seperti AppBar dan Text.</p>
