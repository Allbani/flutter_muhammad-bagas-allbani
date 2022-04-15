import 'package:flutter/material.dart';
import 'package:provider_refisi/model/contact_model.dart';

class DataContact extends StatelessWidget {
  final ContactModel model;
  const DataContact({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(model.name),
        Text(model.phone),
      ],
    );
  }
}
