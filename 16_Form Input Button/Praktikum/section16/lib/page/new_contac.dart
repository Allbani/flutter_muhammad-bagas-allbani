import 'package:flutter/material.dart';
import 'package:section16/page/contac.dart';

class NewContact extends StatefulWidget {
  const NewContact({Key? key}) : super(key: key);

  @override
  State<NewContact> createState() => _NewContactState();
}
  final _formKey = GlobalKey<FormState>();

class _NewContactState extends State<NewContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Create New Contact'
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              if (_formKey.currentState!.validate()) {
                Navigator.pushReplacement(
                context, MaterialPageRoute(
                  builder: (context) => const ContacPage(),
                ),
              );
              }
            }, 
            icon: const Icon(Icons.check)
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 30),
          child: Column(
            children: [
              Container(
                width: 390,
                height: 80,
                child: TextFormField(
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Masukkan Nama';
                    }
                    return null;
                  },
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
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Masukkan Nomer';
                    }
                    return null;
                  },
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
      ),
    );
  }
}
