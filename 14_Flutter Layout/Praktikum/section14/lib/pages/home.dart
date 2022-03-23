import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:section14/pages/grid.dart';
import 'package:section14/widget/contac.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ListView Flutter',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Contac(
            image: 'assets/item3.png', 
            contac: '(+62) 851232178312', 
            text: 'Asep'
          ),
          Contac(
            image: 'assets/item3.png', 
            contac: '(+62) 851232178312', 
            text: 'Asep'
          ),
          Contac(
            image: 'assets/item3.png', 
            contac: '(+62) 851232178312', 
            text: 'Asep'
          ),
          Contac(
            image: 'assets/item3.png', 
            contac: '(+62) 851232178312', 
            text: 'Asep'
          ),
          Contac(
            image: 'assets/item3.png', 
            contac: '(+62) 851232178312', 
            text: 'Asep'
          ),
          Contac(
            image: 'assets/item3.png', 
            contac: '(+62) 851232178312', 
            text: 'Asep'
          ),
          Contac(
            image: 'assets/item3.png', 
            contac: '(+62) 851232178312', 
            text: 'Asep'
          ),
          Contac(
            image: 'assets/item3.png', 
            contac: '(+62) 851232178312', 
            text: 'Asep'
          ),
          Contac(
            image: 'assets/item3.png', 
            contac: '(+62) 851232178312', 
            text: 'Asep'
          ),
          Contac(
            image: 'assets/item3.png', 
            contac: '(+62) 851232178312', 
            text: 'Asep'
          ),
          Contac(
            image: 'assets/item3.png', 
            contac: '(+62) 851232178312', 
            text: 'Asep'
          ),
          Contac(
            image: 'assets/item3.png', 
            contac: '(+62) 851232178312', 
            text: 'Asep'
          ),
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
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.contact_page
            ),
            label: 'Contac'
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => const GridPage()
                  ),
                );
              },
              child: const Icon(
                Icons.grid_3x3
              ),
            ),
            label: 'Grid'
          ),
        ]
      ),
    );
  }
}
