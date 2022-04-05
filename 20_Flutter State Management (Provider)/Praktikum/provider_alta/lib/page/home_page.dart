import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_alta/model/model.dart';
import 'package:provider_alta/stores/contact.dart' as contact_store;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  String phoneNumber = '';
  var nameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: nameController,
                onChanged: (String value) {
                  name = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Name'
                ),
                validator: (value){
                  if (value!.isEmpty){
                    return 'Masukkan Nama';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: phoneNumberController,
                onChanged: (String value) {
                  phoneNumber = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Number'
                ),
                validator: (value){
                  if (value!.isEmpty){
                    return 'Masukkan Nomer';
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (!formKey.currentState!.validate()) return;

                formKey.currentState!.save();
                
                contactProvider.add(
                  GetContact(
                    name: name, 
                    phoneNumber: phoneNumber
                  ),
                );
              },
              child: const Text('Add Number'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: contactProvider.contacts.length,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(contactProvider.contacts[index].name),
                    subtitle: Text(contactProvider.contacts[index].phoneNumber),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
