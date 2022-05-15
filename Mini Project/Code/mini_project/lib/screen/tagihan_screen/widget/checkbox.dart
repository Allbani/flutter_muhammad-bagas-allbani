import 'package:flutter/material.dart';
import 'package:mini_project/theme.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: whiteColor,
      activeColor: greenColor,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
      value: isChecked,
    );
  }
}
