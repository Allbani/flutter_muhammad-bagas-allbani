import 'package:bloc_alta/events/contact_event.dart';
import 'package:bloc_alta/model/contact_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactBloc extends Bloc<ContactEvent, List<ContactData>> {
  ContactBloc() : super([]) {
    List<ContactData> listContact = [];

    on<ContactEvent>((event, emit) {
      listContact.add(event.contactData);
      emit(listContact);
    });
  }
}


// Stream<List<ContactData>> mapEventToState(ContactEvent event) async* {
//   switch (event.event) {
//     case Event.add:
//       List<ContactData> newState = List.from(state);
//       // ignore: unnecessary_null_comparison
//       if (event.contactData != null) {
//         newState.add(event.contactData);
//       }
//       yield newState;  
//       break;
//     case Event.delete:
//       List<ContactData> newState = List.from(state);
//       print(newState.length);
//       newState.removeAt(event.contactIndex);
//       yield newState;
//       break;
//     default:
//       throw Exception('Not found $event');
//   }
// }
