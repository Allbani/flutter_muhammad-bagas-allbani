import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:section13/main.dart';

class BarcodeScreen extends StatelessWidget {
  const BarcodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => Home()
              )
            );
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text(
          'Barcode'
        ),
        centerTitle: true,
      ),
      body: Center(
        child: BarcodeWidget(
          barcode: Barcode.qrCode(),
          data: 'Altera Academy, Flutter asik, Muhammad Bagas Allbani',
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
