import 'package:bloc_alta/events/event.dart';
import 'package:bloc_alta/helper/database_helper.dart';
import 'package:bloc_alta/model/contact_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DbManager extends Bloc<AppState, List<ContactData>> {
  late DataBaseHelper _dbHelper;
  List<ContactData> _contactData = [];

  List<ContactData> get contactData => _contactData;

  DbManager() : super([]) {
    _dbHelper = DataBaseHelper();

    on<AppGetContact>((event, emit) async {
      _contactData = await _dbHelper.getContact();
    });

    on<AppAddContact>((event, emit) async {
      await _dbHelper.inseetContact(event.contactData);
      emit(_contactData);
    });

    on<AppUpdate>((event, emit) async {
      await _dbHelper.updateContact(event.contactData);
    });

    on<AppDeleted>((event, emit) async {
      await _dbHelper.deletedContact(event.name);
    });
  }
}
