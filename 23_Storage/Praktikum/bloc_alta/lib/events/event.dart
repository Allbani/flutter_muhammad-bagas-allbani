import 'package:bloc_alta/model/contact_data.dart';

abstract class AppState {}

class AppAddContact extends AppState {
  final ContactData contactData;
  AppAddContact(this.contactData);
}

class AppGetContact extends AppState {}

class AppUpdate extends AppState {
  final ContactData contactData;
  AppUpdate(this.contactData);
}

class AppDeleted extends AppState {
  final String name;
  AppDeleted(this.name);
}
