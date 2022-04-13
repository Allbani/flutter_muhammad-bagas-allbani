import 'package:bloc_alta/events/contact_event.dart';
import 'package:bloc_alta/model/contact_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactBloc extends Bloc<ContactEvent, List<ContactData>> {
  ContactBloc() : super([]) {
    List<ContactData> listContact = [];

    on<ContactEvent>(
      (event, emit) {
        listContact.add(event.contactData);
        emit(listContact);
      },
    );
  }
}
