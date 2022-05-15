import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mini_project/model/articel_model.dart';

class ArticelService {
  final baseUrl =
      'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=cb10e8b0931141aa8119a4155bdee016';

  Future<List<Articel>> getArticel() async {
    final res = await http.get(Uri.parse(baseUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Articel> articel =
          body.map((dynamic item) => Articel.fromJson(item)).toList();

      return articel;
    } else {
      throw ('Datanya Kosong');
    }
  }
}
