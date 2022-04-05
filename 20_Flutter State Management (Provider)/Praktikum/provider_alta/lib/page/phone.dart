import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_alta/stores/contact.dart' as contact_store;

class PhonePage extends StatelessWidget {
  const PhonePage(void add, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone'),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: contactProvider.contacts.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Text(contactProvider.contacts[index].name),
                subtitle: Text(contactProvider.contacts[index].phoneNumber),
              );
            }
          ),
        ],
      ),
    );
  }
}