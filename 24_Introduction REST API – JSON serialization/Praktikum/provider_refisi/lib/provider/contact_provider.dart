import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:provider_refisi/model/contact_model.dart';

class ContactProvider extends ChangeNotifier {
  List contakBook = [];

  void addContact(
    List newContact,
  ) {
    contakBook.add(newContact);
    notifyListeners();
  }

  //Membuat Function getContact
  Future<List<ContactModel>> getContact() async {
    //Membuat variabel baru untuk menampilkan hasil dari request http
    var result = await http.get(
      Uri.parse(
          'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts'),
    );

    //Membuat pengkondisian
    if (result.statusCode == 200) {
      List data =
          jsonDecode(result.body); //Melakukan convert kedalam bentuk object
      List<ContactModel> contact =
          data.map((item) => ContactModel.fromJson(item)).toList();
      return contact;
    } else {
      return <
          ContactModel>[]; //mengembalikan list kosong jika statusCode bukan 200
    }
  }
}
