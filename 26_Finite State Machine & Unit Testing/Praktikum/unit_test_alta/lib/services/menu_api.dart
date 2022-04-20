import 'package:dio/dio.dart';
import 'package:unit_test_alta/models/menu_model.dart';

class MenuApi {
  static Future<List<MenuModel>> getMenu() async {
    final response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods');

    List<MenuModel> menu = (response.data as List)
        .map(
          (e) => MenuModel(
            id: e['id'],
            name: e['name'],
          ),
        )
        .toList();
    return menu;
  }
}
