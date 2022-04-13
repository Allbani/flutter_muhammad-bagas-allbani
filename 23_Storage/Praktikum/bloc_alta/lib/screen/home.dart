import 'package:bloc_alta/widget/list_contact.dart';
import 'package:flutter/material.dart';

import 'contact_create.dart';

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
        title: const Text('Contact'),
        centerTitle: true,
      ),
      body: const ListContact(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
              return const ContactCreate();
            }, transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
              final transisi =
                  Tween(begin: const Offset(0, .5), end: Offset.zero);

              return SlideTransition(
                position: animation.drive(transisi),
                child: child,
              );
            }),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
