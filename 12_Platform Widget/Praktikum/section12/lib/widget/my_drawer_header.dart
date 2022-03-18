import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawerHeader1 extends StatelessWidget {
  const MyDrawerHeader1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Muhammad Bagas Allbani',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),
            ), 
            accountEmail: Text(
              '+6285129999999',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/pp.png'),
              )
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?size=626&ext=jpg'
                ),
                fit: BoxFit.cover
              ),
            ),
          ),
          ListTile(
          leading: Icon(Icons.group),
          title: Text(
            'New Group',
            style: GoogleFonts.poppins(
              color: Colors.blueGrey,
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.lock_clock_rounded),
          title: Text(
            'New Secret Group',
            style: GoogleFonts.poppins(
              color: Colors.blueGrey,
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        const Divider(
          height: 1,
          thickness: 1,
        ),
        ListTile(
          leading: Icon(Icons.contact_page),
          title: Text(
            'Contact',
            style: GoogleFonts.poppins(
              color: Colors.blueGrey,
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.group_add),
          title: Text(
            'Invite Friends',
            style: GoogleFonts.poppins(
              color: Colors.blueGrey,
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            'Settings',
            style: GoogleFonts.poppins(
              color: Colors.blueGrey,
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        ],
      ),
    );
  }
}
