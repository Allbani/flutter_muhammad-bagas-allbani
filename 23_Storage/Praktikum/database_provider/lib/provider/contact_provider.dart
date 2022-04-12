import 'package:database_provider/model/contact_model.dart';
import 'package:flutter/widgets.dart';

class ContactProvider extends ChangeNotifier {
  final _contactModel = <ContactModel>[];
  List<ContactModel> get contactModel => List.unmodifiable(_contactModel);

  void addContact(ContactModel contact) {
    _contactModel.add(contact);
    notifyListeners();
  }

  void deleteContact(int index) {
    _contactModel.removeAt(index);
    notifyListeners();
  }
}
