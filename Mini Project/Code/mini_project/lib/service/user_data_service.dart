import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mini_project/model/user_data_model.dart';

class UserDataService {
  final url = 'https://reqres.in/api/users?page=2';

  Future<List<UserDataModel>> getDataUser() async {
    final res = await http.get(
      Uri.parse(url),
    );
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['data'];

      List<UserDataModel> user =
          body.map((dynamic item) => UserDataModel.fromJson(item)).toList();
      return user;
    } else {
      throw ('Datanya Kosong');
    }
  }
}
