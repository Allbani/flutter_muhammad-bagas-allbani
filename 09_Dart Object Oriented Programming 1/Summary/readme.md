# Dart Object Oriented Programming

## Class

<p align="justify">Class dapat diartikan sebagai gambaran atau object yang dimana kita mendesign suatu object berdasarkan class yang kita buat, sedikit contoh seperti kita jika ingin membuat sebuah object makanan maka yang kita perlukan yaitu menyiapkan bahan makanan terlebih dahulu, dan kemudian kita akan membuat sebuah makanannya. </p>

Contoh :

```dart
class Makanan{

}
```

## Property

<p align="justify"> Property merupakan suatu class yang memilik sifat seperti variabel, sedikit contoh sebelumnya class jika ingin membuat makanan kita perlu menyiapkan bahan bahannya terlebih dahulu. nah pada property ini bisa dibilang adalah seperti bahan bahannya pada class.</p>

Contoh :

```dart
class Makanan{
    String wortel = 1;
    String jamur = 2;
}
```

## Method

<p align="justif">Method merupakan suatu aktivitas yang dikerjakan suatu class. seperti contoh Class yang sebelumnya ketika kita sudah menyiapkan bahan maka selanjutnya kita melakukan pengolahan. nah yang dimana pada Method ini bisa disebut suatu tempat untuk melakukan pengolahan</p>

Contoh :

```dart
class Makanan {
  int wortel = 1;
  int jamur = 2;

  void sop() {
    print(wortel);
    print(jamur);
  }
}

void main() {
  var h1 = Makanan();
  h1.sop();
}
```
