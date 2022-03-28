import 'package:flutter/material.dart';
import 'package:section16/page/new_contac.dart';
import 'package:section16/widget/contac_widget.dart';


class ContacPage extends StatelessWidget {
  const ContacPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Contac'
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 30
        ),
        child: ListView(
          children: 
            [Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 390,
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(12),
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide.none
                      ),
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search'
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Contac',
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const ContacWidget(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQhgPSKCvaX_bY0vWK7Ng48l41xccwy8xQgA&usqp=CAU', 
                  name: 'Hani', 
                  number: '081231243212'
                ),
                const SizedBox(height: 12),
                const ContacWidget(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQhgPSKCvaX_bY0vWK7Ng48l41xccwy8xQgA&usqp=CAU', 
                  name: 'Hani', 
                  number: '081231243212'
                ),
                const SizedBox(height: 12),
                const ContacWidget(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQhgPSKCvaX_bY0vWK7Ng48l41xccwy8xQgA&usqp=CAU', 
                  name: 'Hani', 
                  number: '081231243212'
                ),
                const SizedBox(height: 12),
                const ContacWidget(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQhgPSKCvaX_bY0vWK7Ng48l41xccwy8xQgA&usqp=CAU', 
                  name: 'Hani', 
                  number: '081231243212'
                ),
                const SizedBox(height: 12),
                const ContacWidget(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQhgPSKCvaX_bY0vWK7Ng48l41xccwy8xQgA&usqp=CAU', 
                  name: 'Hani', 
                  number: '081231243212'
                ),
                const SizedBox(height: 12),
                const ContacWidget(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQhgPSKCvaX_bY0vWK7Ng48l41xccwy8xQgA&usqp=CAU', 
                  name: 'Hani', 
                  number: '081231243212'
                ),
                const SizedBox(height: 12),
                const ContacWidget(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQhgPSKCvaX_bY0vWK7Ng48l41xccwy8xQgA&usqp=CAU', 
                  name: 'Hani', 
                  number: '081231243212'
                ),
                const SizedBox(height: 12),
                const ContacWidget(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQhgPSKCvaX_bY0vWK7Ng48l41xccwy8xQgA&usqp=CAU', 
                  name: 'Hani', 
                  number: '081231243212'
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){
          Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => const NewContac()
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
