import 'package:flutter/material.dart';
import 'package:provider_refisi/page/contact_create.dart';
import 'package:provider_refisi/widget/contact_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Boon'),
        centerTitle: true,
      ),
      body: const ContactList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => const ContactCreate(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
