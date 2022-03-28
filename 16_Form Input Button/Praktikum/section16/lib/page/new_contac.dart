import 'package:flutter/material.dart';
import 'package:section16/page/contac.dart';

class NewContac extends StatelessWidget {
  const NewContac({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'New Contac'
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushReplacement(
                context, MaterialPageRoute(
                  builder: (context) => const ContacPage()
                ),
              );
            }, 
            icon: const Icon(Icons.check)
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 30),
        child: Column(
          children: [
            Container(
              width: 390,
              height: 80,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide.none
                  ),
                  hintText: 'Name'
                ),
              ),
            ),
            Container(
              width: 390,
              height: 80,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide.none
                  ),
                  hintText: 'Nomer'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
