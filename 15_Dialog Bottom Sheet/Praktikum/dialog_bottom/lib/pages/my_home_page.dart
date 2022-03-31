import 'package:dialog_bottom/model/data_model.dart';
import 'package:dialog_bottom/widget/image_bottom_sheets.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ), 
        itemCount: gambar.length,
        itemBuilder: (context, index){
          return InkWell(
            onTap: (){
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20)
                  )
                ),
                context: context, 
                builder: (context) => ImageBottomSheets(
                  gambarBottom: gambar[index]
                ),
              );
            },
            child: Image.network(gambar[index],
            ),
          );
        }
      ),
    );
  }
}
