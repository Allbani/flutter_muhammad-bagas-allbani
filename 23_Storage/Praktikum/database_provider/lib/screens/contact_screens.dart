import 'package:database_provider/model/db_manager.dart';
import 'package:database_provider/provider/contact_provider.dart';
import 'package:database_provider/screens/create_contact_screens.dart';
import 'package:database_provider/screens/empty_screens.dart';
import 'package:database_provider/screens/login_screens.dart';
import 'package:database_provider/widget/contact_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContactScreens extends StatefulWidget {
  const ContactScreens({Key? key}) : super(key: key);

  @override
  State<ContactScreens> createState() => _ContactScreensState();
}

class _ContactScreensState extends State<ContactScreens> {
  late SharedPreferences logindata;
  String username = '';

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              logindata.setBool('login', true);
              logindata.remove('username');
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateContactScreens(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Consumer<DbManager>(
        builder: (context, manager, child) {
          if (manager.contactModel.isNotEmpty) {
            return ContactList(
              manager: manager,
            );
          } else {
            return const EmptyScreens();
          }
        },
      ),
    );
  }
}
