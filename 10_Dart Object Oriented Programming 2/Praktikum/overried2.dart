class Matematika {
  void hasil() {
    print('tidak ada');
  }
}

class Kpk implements Matematika {
  int x = 12;
  int y = 24;

  @override
  void hasil() {
    int i;


    for (i = y; i % x != 0 || i % y != 0; i++);

    print('KPK: $i');
  }
}

class Fpb implements Matematika {
  int x = 12;
  int y = 24;
  @override
  void hasil() {
    while (x != y) {
      if (x > y) {
        x = x - y;
      } else {
        y = y - x;
      }
    }
    print('FPB: $x');
  }
}

void main() {
  Kpk kpk = Kpk();
  Fpb fpb = Fpb();
  kpk.hasil();
  fpb.hasil();
}
