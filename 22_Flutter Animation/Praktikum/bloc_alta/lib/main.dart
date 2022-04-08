import 'package:bloc_alta/bloc/contact_bloc.dart';
import 'package:bloc_alta/screen/choice_screen.dart';
import 'package:bloc_alta/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContactBloc>(
      create: (context) => ContactBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ChoiceScreen(),
      ),
    );
  }
}
