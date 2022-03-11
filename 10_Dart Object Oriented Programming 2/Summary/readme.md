# Dart Object Oriented Programming 2

## Overriding

<p align="justify">Method overriding adalah fitur OOP yang memungkinkan kelas anak untuk memberikan implementasinya sendiri ke metode yang didefinisikan dalam kelas induk. Implementasi di kelas anak menimpa definisi metode di kelas dasar, asalkan metode di kelas anak harus memiliki nama yang sama, tanda tangan dan jenis kembali.</p>

Contoh Override :

```dart
class Makanan{
    murah(){
        print('tidak tahu');
    }

    enak(){
        print('tidak tahu');
    }
}

class Tempe extends Makanan{
    @override
    murah(){
        print('murah banget');
    }

    enak(){
        print('enak banget');
    }
}

void main(){
    var makanan = Makanan();
    makanan.murah();
    makanan.enak():
}
```

<p align="justify">Pada contoh diatas Method murah dan enak di tulis ulang dan ditambahkan @override dibaris sebelum method dibuat</p>

## Constructor

<p align="justify">Constructor adalah fungsi khusus dari class yang memiliki tanggung jawab untuk menginisialisasi   variabel   class.  ConstruCtor   adalah   fungsi   dan karenanya   dapat   di parameterisasi. Namun, constuctor tidak seperti fungsi, constructor tidak memiliki tipe pengembalian </p>

Contoh Constructor :

```dart
class Makanan{
    Makanan(String namaMakanan){
        print(namaMakanan);
    }
}

void main(){
    Makanan('Tahu');
}
```

## Inheritance

<p align="justify"> Inheritance merupakan class turunan dari class lainnya. inheritance dibuat dengam membuat class baru dengan tujuan dihubungkan dengan class yang lain yang diinginkan. dengan tujuan untuk mendapatkan informasi dari class yang dihubungkan dan class yang baru sebut dengan sub class.</p>
