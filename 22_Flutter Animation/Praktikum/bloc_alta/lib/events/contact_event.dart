import 'package:bloc_alta/model/contact_data.dart';

enum Event { add }

class ContactEvent {
  late final ContactData contactData;
  late final Event event;

  ContactEvent.add(ContactData contactData) {
    event = Event.add;
    contactData = contactData;
  }
}
