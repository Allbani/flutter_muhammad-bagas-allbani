import 'package:database_provider/helper/database_helper.dart';
import 'package:database_provider/model/contact_model.dart';
import 'package:flutter/widgets.dart';

class DbManager extends ChangeNotifier {
  List<ContactModel> _contactmodel = [];
  late DataBaseHelper _dbHelper;

  List<ContactModel> get contactModel => _contactmodel;

  DbManager() {
    _dbHelper = DataBaseHelper();
    _getAllContact();
  }

  void _getAllContact() async {
    _contactmodel = await _dbHelper.getContact();
    notifyListeners();
  }

  Future<void> addContact(ContactModel contactModel) async {
    await _dbHelper.insertContact(contactModel);
    _getAllContact();
  }

  Future<ContactModel> getContactById(int id) async {
    return await _dbHelper.getContactById(id);
  }

  void updateContact(ContactModel contactModel) async {
    await _dbHelper.updateContact(contactModel);
    _getAllContact();
  }

  void deleteContact(int id) async {
    await _dbHelper.deletedContact(id);
    _getAllContact();
  }
}
