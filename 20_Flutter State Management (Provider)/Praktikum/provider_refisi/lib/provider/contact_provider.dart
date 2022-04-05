import 'package:flutter/material.dart';

class ContactProvider extends ChangeNotifier {
  List contakBook = [];

  void addContact(List newContact, BuildContext context) {
    contakBook.add(newContact);
    notifyListeners();
  }
}
