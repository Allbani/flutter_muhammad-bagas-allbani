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
