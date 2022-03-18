# Platform Widget

## MatrialApp

<p align="justify">MaterialApp adalah sebuah widget dimana yang akan menerapkan style material design. Selain itu, MaterialApp juga memiliki control untuk mengatur route, theme, supported locales, dan lain sebagainya, atau dalam kata simpelnya MaterialApp adalah sebuah widget yang membungkus beberapa widget yang menggunakan tema material design</p>

## Scaffold

<p align="justify">Scaffold adalah Widget utama untuk membuat halaman pada flutter khususnya android. Scaffold memiliki beberapa parameter yang bisa digunakan seperti AppBar unutk membuat AppBar, body untuk bagian tubuhnya, backgorund color untuk mengganti warna latar belakangnya.</p>

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

## CupertinoApp

<p align="justify">CupertinoApp sebenernya sama saja dengan MaterialApp, hanya bedanya kalau CupertinoApp digunakan khusus untuk membuat widget style IOS dan MaterialApp digunakan untuk Android.</p>
