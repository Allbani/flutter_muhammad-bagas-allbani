import 'package:database_provider/model/db_manager.dart';
import 'package:database_provider/provider/contact_provider.dart';
import 'package:database_provider/screens/create_contact_screens.dart';
import 'package:database_provider/screens/empty_screens.dart';
import 'package:database_provider/widget/contact_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactScreens extends StatelessWidget {
  const ContactScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateContactScreens(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Consumer<DbManager>(
        builder: (context, manager, child) {
          if (manager.contactModel.isNotEmpty) {
            return ContactList(
              manager: manager,
            );
          } else {
            return const EmptyScreens();
          }
        },
      ),
    );
  }
}
