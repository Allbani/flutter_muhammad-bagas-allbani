import 'package:bloc_alta/model/contact_data.dart';

enum Event { add, delete }

class ContactEvent {
  late final ContactData contactData;
  late final int contactIndex;
  late final Event event;

  ContactEvent.add(ContactData contactData) {
    event = Event.add;
    contactData = contactData;
  }

  ContactEvent.delete(int index) {
    event = Event.delete;
    contactIndex = index;
  }
}
