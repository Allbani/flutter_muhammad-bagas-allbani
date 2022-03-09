// TAKS 1 MEMBUAT CLASS HEWAN DAN CLASS MOBIL
class Hewan {
  var sapi = '1 ton';
  var kambing = '250 kg';
  var kerbau = '700 kg';
  var gajah = '5 ton';
}

class Mobil {
  List muatan = ['sapi', 'kambing', 'kerbau', 'gajah'];
  int kapasitas = 5;
  List muatanBaru = ['ayam'];

  void tambahMuatan() {
    for (var baru in muatan) {
      if (kapasitas <= 5) {
        muatanBaru.add(baru);
      }
    }
    print(muatanBaru);
  }
// TAKS 2 MENAMBAHKAN METHOD totalMuatan
  void totalMuatan() {
    int totalMuatan = muatanBaru.length;
    print('Jumlah muatan : $totalMuatan');
  }
}

void main() {
  var h1 = Hewan();
  var h2 = Mobil();
  print('===CLASS HEWAN===');
  print(h1.sapi);
  print(h1.kambing);
  print(h1.kerbau);
  print(h1.gajah);
  print('===CLASS MOBIL===');
  print(h2.muatan); // HASIL SEBELUM DITAMBAH MUATAN
  h2.tambahMuatan(); // HASIL SESUDAH DITAMBAH MUATAN
  h2.totalMuatan(); // MENGHITUNG TOTAL MUATAN BERDASARKAN BANYAK KATA
}
