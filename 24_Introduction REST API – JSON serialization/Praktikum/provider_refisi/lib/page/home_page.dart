import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_refisi/model/contact_model.dart';
import 'package:provider_refisi/page/contact_create.dart';
import 'package:provider_refisi/provider/contact_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Menambahkan variable contactProvidr
    var contactProvider = Provider.of<ContactProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Book'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        //Memanggil function getContact
        future: contactProvider.getContact(),
        builder: (context, AsyncSnapshot<List<ContactModel>> snapshot) {
          if (snapshot.hasData) {
            List<ContactModel>? model = snapshot.data;
            return ListView.builder(
              itemCount: model!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index].name),
                  subtitle: Text(snapshot.data![index].phone),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ContactCreate(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
