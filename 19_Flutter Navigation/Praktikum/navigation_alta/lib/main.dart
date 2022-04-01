import 'package:flutter/material.dart';
import 'package:navigation_alta/pages/contacs.dart';
import 'package:navigation_alta/pages/create_contac.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'contacts', 
      routes: {
        'contacts' : (context) => const Contacts(),
        'create_contacts' : (context) => const CreateContacts()
      }
    );
  }
}