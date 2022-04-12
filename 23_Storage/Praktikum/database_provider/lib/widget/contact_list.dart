import 'package:database_provider/model/db_manager.dart';
import 'package:database_provider/provider/contact_provider.dart';
import 'package:database_provider/screens/contact_screens.dart';
import 'package:database_provider/screens/create_contact_screens.dart';
import 'package:database_provider/widget/contact_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactList extends StatelessWidget {
  final DbManager manager;
  const ContactList({Key? key, required this.manager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Consumer<DbManager>(
        builder: (context, value, child) {
          final contactItem = manager.contactModel;
          return ListView.separated(
            itemCount: contactItem.length,
            itemBuilder: (context, index) {
              final item = contactItem[index];
              return InkWell(
                onTap: () async {
                  final selectedContact =
                      await manager.getContactById(item.id!);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateContactScreens(
                        contactModel: selectedContact,
                      ),
                    ),
                  );
                },
                child: ContactCard(
                  contact: item,
                  onPressed: () {
                    manager.deleteContact(item.id!);
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          '${item.name} Deleted',
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 16,
              );
            },
          );
        },
      ),
    );
  }
}
