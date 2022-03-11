class BangunRuang {
  int panjang = 2;
  int lebar = 2;
  int tinggi = 2;

  void volume() {}
}

class Kubus extends BangunRuang {
  @override
  void volume() {
    int sisi = 2;
    var hitungSisi = sisi * sisi * sisi;
    print(hitungSisi);
  }
}

class Balok extends BangunRuang {
  @override
  void volume() {
    int panjang = 3;
    int lebar = 5;
    int tinggi = 2;

    var hitungVolume = panjang * lebar * tinggi;
    print(hitungVolume);
  }
}

void main() {
  Kubus kubus = Kubus();
  Balok balok = Balok();

  kubus.volume();
  balok.volume();
}
