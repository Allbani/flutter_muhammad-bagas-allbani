import 'package:bloc_alta/model/contact_data.dart';

enum Event { add }

class ContactEvent {
  final ContactData contactData;

  ContactEvent(this.contactData);
}
