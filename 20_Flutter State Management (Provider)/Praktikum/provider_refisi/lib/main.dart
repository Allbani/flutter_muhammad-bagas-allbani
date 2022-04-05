import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_refisi/page/home_page.dart';
import 'package:provider_refisi/provider/contact_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context){
            return ContactProvider();
          }
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}