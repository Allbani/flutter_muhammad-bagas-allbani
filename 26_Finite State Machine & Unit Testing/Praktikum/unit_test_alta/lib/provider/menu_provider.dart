import 'package:flutter/cupertino.dart';
import 'package:unit_test_alta/models/menu_model.dart';
import 'package:unit_test_alta/services/menu_api.dart';

class MenuProvider extends ChangeNotifier {
  List<MenuModel> _menu = [];

  List<MenuModel> get menu => _menu;

  getAllMenu() async {
    final m = await MenuApi.getMenu();
    _menu = m;
    notifyListeners();
  }
}
