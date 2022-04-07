import 'package:bloc_alta/bloc/contact_bloc.dart';
import 'package:bloc_alta/events/contact_event.dart';
import 'package:bloc_alta/model/contact_data.dart';
import 'package:bloc_alta/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactCreate extends StatefulWidget {
  const ContactCreate({Key? key}) : super(key: key);

  @override
  State<ContactCreate> createState() => _ContactCreateState();
}

class _ContactCreateState extends State<ContactCreate> {
  String name = '';
  String number = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Contac'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Name'),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Number'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<ContactBloc>(context)
                      .add(ContactEvent.add(ContactData(name, number)));

                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: const Text('Add Number')),
          ],
        ),
      ),
    );
  }
}
