import 'package:flutter/widgets.dart';
import 'package:provider_alta/model/model.dart';

class Contact with ChangeNotifier {
  final List<GetContact> _contacts = [];
  List<GetContact> get contacts => _contacts;

  void add(GetContact contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}
