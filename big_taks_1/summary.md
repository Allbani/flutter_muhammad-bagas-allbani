# big_taks_1

## Nomer 1

### Screenshots

![hasil no1](https://user-images.githubusercontent.com/93906193/156916573-de4173c9-8344-483e-b5db-5d273b6ff7d7.png)

### Code

``` dart
// Ganjir atau Genap
cekNilai(int nilai) {
  if (nilai % 2 == 0) {
    return true;
  }
  return false;
}
void main() {
  print(cekNilai(1));
  print(cekNilai(2));
}
```

<p align="justify">Pada nomer pertama ini saya membuat sebuah fungsi yang menerima sebuah angka dan ketika angka itu dijalankan angka tersebut akan mengeprint <strong>True</strong> jika angka itu <strong>genap</strong> sedangkan jika angka itu <strong>ganjil</strong> akan mengeprint <strong>False</strong ></p>

## Nomer 2

### Screenshotts

![hasil no2_a](https://user-images.githubusercontent.com/93906193/156917825-1216d0bd-1bf2-4451-9d44-2e444198ba92.png)

![hasil no2_b](https://user-images.githubusercontent.com/93906193/156916576-3261055c-c720-48a0-8fbe-f25b592166f3.png)

![hasil no2_c](https://user-images.githubusercontent.com/93906193/156916577-be9516f2-c2d8-46c4-9850-526435e8eaf3.png)

### Code

``` dart
// Azimuth and BackAzimuth
void main() {
  int azimuth = 180;
  if (azimuth > 180) {
    print(azimuth - 180);
  } else if (azimuth < 180) {
    print(azimuth + 180);
  } else if (azimuth == 180) {
    print(0);
  }
}
```

<p align="justify">Pada nomer kedua ini soal azimuth/back azimuth yang disuruh membuat sebuah fungsi, tetapi saya tidak membuatnya dan langsung melakukan percabangan dengan ketentuan yang ditetapkan :</p>

- Bila nilai Azimuth > 180º , maka nilai Azimuth dikurangi 180º.
- Bila nilai Azimuth < 180º , maka nilai Azimuth ditambah 180º.
- Bila nilai Azimuth = 180º , maka nilai Azimuth +/- 180º.
- Nilai Azimuth 0º = nilai Azimuth 360º.

Contoh perhitungan sudut azimuth dan back azimuth :

- Azimuth = 265º, maka back azimuthnya = 265º - 180º = 85º.
- Azimuth = 155º, maka back azimuthnya = 155º + 180º = 335º.
- Azimuth = 180º, maka back azimuthnya = 180º +/-180º = 360º (atau 0º).

## Nomer 3

### Screenshots

![hasil no3](https://user-images.githubusercontent.com/93906193/156918642-47cb3737-00aa-48e4-a844-851237c61636.png)

### Code

``` dart
void main() {
  int i, j, k, n = 5;
  for (i = 0; i <= n - 1; i++) {
    for (j = 0; j < i; j++) {
      stdout.write(" ");
    }
    for (k = i; k <= n - 1; k++) {
      stdout.write("*" + " ");
    }
    stdout.writeln("");
  }
  for (i = n - 1; i >= 0; i--) {
    for (j = 0; j < i; j++) {
      stdout.write(" ");
    }
    for (k = i; k <= n - 1; k++) {
      stdout.write("*" + " ");
    }
    stdout.writeln("");
  }
}
```


<p align="justify">Pada nomer ketiga ini membuat sebuah jam pasir yang dimana menampilkan jam paasir dengan sesuai.</p>

## Nomer 4

### Screenshots

![hasil no4](https://user-images.githubusercontent.com/93906193/156916579-61f42a87-e5c2-4425-a368-872a96f98603.png)


### Code

```dart
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
```

<p align="justify">Pada nomer ke empat ini atau yang terakhir membuat sebuah diagonal angka dengan menggunakan sebuah fungsi yang dapat menerima angka dan menampilkan angka secara diagonal. Pada nomer terakhir ini sedikit kebingungan cara bagaimana untuk menyampingkan angka secara 1-1 setiap perulangannya dan disini juga saya kebingungan karena output yang saya dapat angkanya sama.</p>
