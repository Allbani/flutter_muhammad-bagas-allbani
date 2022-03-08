void main() async {
  await hitungList(list: [2, 4, 6], pengali: 2);
  tes();
}

Future<void> hitungList({required List list, required int pengali}) async {
  await Future.delayed(Duration(seconds: 1),(){
    final hasilList = [];
    for (var isiList in list) {
    isiList = isiList * pengali;
    hasilList.add(isiList);
  }
  print(hasilList.toString());
  });
  
}

void tes() {
  print('haii');
}

