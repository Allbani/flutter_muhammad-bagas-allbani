import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:section14/pages/home.dart';
import 'package:section14/widget/grid_conten.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Grid Flutter',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      backgroundColor: Colors.white,
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 50,
        mainAxisSpacing: 50,
        crossAxisCount: 4,
        children: const [
          GridConten(iconImg: Icons.pets),
          GridConten(iconImg: Icons.wc),
          GridConten(iconImg: Icons.translate),
          GridConten(iconImg: Icons.volume_down),
          GridConten(iconImg: Icons.handshake),
          GridConten(iconImg: Icons.pets),
          GridConten(iconImg: Icons.wc),
          GridConten(iconImg: Icons.translate),
          GridConten(iconImg: Icons.volume_down),
          GridConten(iconImg: Icons.handshake),
          GridConten(iconImg: Icons.pets),
          GridConten(iconImg: Icons.wc),
          GridConten(iconImg: Icons.translate),
          GridConten(iconImg: Icons.volume_down),
          GridConten(iconImg: Icons.handshake),
          GridConten(iconImg: Icons.pets),
          GridConten(iconImg: Icons.wc),
          GridConten(iconImg: Icons.translate),
          GridConten(iconImg: Icons.volume_down),
          GridConten(iconImg: Icons.handshake),
          GridConten(iconImg: Icons.pets),
          GridConten(iconImg: Icons.wc),
          GridConten(iconImg: Icons.translate),
          GridConten(iconImg: Icons.volume_down),
          GridConten(iconImg: Icons.handshake),
          GridConten(iconImg: Icons.pets),
          GridConten(iconImg: Icons.wc),
          GridConten(iconImg: Icons.translate),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        selectedLabelStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 12
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          color: Colors.grey,
          fontSize: 12
        ),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: 1,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => const HomeScreen()
                  ),
                );
              },
              child: const Icon(
                Icons.contact_page
              ),
            ),
            label: 'Contac'
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_3x3
            ),
            label: 'Grid'
          ),
        ]
      ),
    );
  }
}
