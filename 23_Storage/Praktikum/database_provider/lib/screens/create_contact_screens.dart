import 'package:database_provider/model/contact_model.dart';
import 'package:database_provider/model/db_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateContactScreens extends StatefulWidget {
  final ContactModel? contactModel;
  const CreateContactScreens({Key? key, this.contactModel}) : super(key: key);

  @override
  State<CreateContactScreens> createState() => _CreateContactScreensState();
}

class _CreateContactScreensState extends State<CreateContactScreens> {
  final _contactNameController = TextEditingController();
  final _contactNumberController = TextEditingController();
  bool isUpdate = false;

  @override
  void initState() {
    super.initState();
    if (widget.contactModel != null) {
      _contactNameController.text = widget.contactModel!.name;
      isUpdate = true;
    }
    if (widget.contactModel != null) {
      _contactNumberController.text = widget.contactModel!.number;
      isUpdate = true;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _contactNameController.dispose();
    _contactNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Name'),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  controller: _contactNameController,
                  decoration: const InputDecoration(
                    hintText: 'Name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Number'),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  controller: _contactNumberController,
                  decoration: const InputDecoration(
                    hintText: 'Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (!isUpdate) {
                  final contact = ContactModel(
                    name: _contactNameController.text,
                    number: _contactNumberController.text,
                  );
                  Provider.of<DbManager>(context, listen: false)
                      .addContact(contact);
                } else {
                  final contact = ContactModel(
                    id: widget.contactModel!.id,
                    name: _contactNameController.text,
                    number: _contactNumberController.text,
                  );
                  Provider.of<DbManager>(context, listen: false)
                      .updateContact(contact);
                }
                Navigator.pop(context);
              },
              child: const Text('Add Number'),
            ),
          ],
        ),
      ),
    );
  }
}
