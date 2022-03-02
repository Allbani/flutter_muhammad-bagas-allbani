# Branching - Looping - Fungction

## Pengambilan Keputusan

Menentukan alur program pada kondisi tertentu. ada beberapa macam pengambilan keputusan :

1. IF
2. IF-ELSE
3. ELSE-IF

## Perulangan

Menjalankan proses berulang kali. ada beberapa contoh perulangan :

1. For

   Pada perulangan For diketahui beberapa kali perulangan terjadi, memerlukan nilai awal, memerlukan nilai bool, memerlukan perubahan nilai.

Contoh :

```dart
void main (){
    for(var i = 0; i < 10; i += 1){
        print (i);
    }
}
```

2. While

   Pada perulangan While tidak diketahui berapa kali perulangan terjadi, dan memerlukan nilai bool.

Contoh :

```dart
void main(){
  var i = 0;
    while (i <10){
      print (i);
      i++;
    }
}
```

3. Do-While

   Pada perulangan Do-While mengubah bentuk while, proses dijalankan minimum sekali, akan diteruskan jika nilai bool adalah true.

Contoh :

```dart
void main(){
    var i = 0;
    do{
        print(i);
        i++;
    }while(i < 10);
}
```

## Break dan Continue

Perbedaan Break dan Continue adalah. Break menghientikan seluruh proses perulangan sedangkan Continue Menghentikan satu kali proses perulangan.

Contoh Break:

```dart
void main(){
    for(var i = 0; ture; i++){
        if (i == 5){
            break;
        }
        print (i);
    }
}
```

Pada contoh Break diatas yang dimana saat perintah i sudah mencapai angka 5 otomatis perulangan akan dihentikan.

Contoh Continue:

```dart
void main(){
    for(var i = 0; i <10; i += 1){
        if (i == 5){
            continue;
        }
        print (i);
    }
}
```

Pada contoh continue diatas yang dimana saat perintah i == 5 otomatis pada perulangan angka 5 akan di lewati ke angka selanjutnya.
