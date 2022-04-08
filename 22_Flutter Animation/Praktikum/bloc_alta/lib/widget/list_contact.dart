import 'package:bloc_alta/bloc/contact_bloc.dart';
import 'package:bloc_alta/model/contact_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListContact extends StatelessWidget {
  const ListContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactBloc, List<ContactData>>(
        builder: (context, contacList) {
      return ListView.builder(
          itemCount: contacList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(contacList[index].name),
              subtitle: Text(contacList[index].number),
            );
          });
    }, listener: (BuildContext context, contacList) {
      // ignore: deprecated_member_use
      Scaffold.of(context).showSnackBar(
        const SnackBar(content: Text('Added!')),
      );
    });
  }
}
