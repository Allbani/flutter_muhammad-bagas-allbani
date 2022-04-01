import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List image = [
      'https://i.pinimg.com/736x/17/41/24/1741243ba9bd668e77499f304448397f.jpg',
      'https://i.pinimg.com/736x/17/41/24/1741243ba9bd668e77499f304448397f.jpg',
      'https://i.pinimg.com/736x/17/41/24/1741243ba9bd668e77499f304448397f.jpg',      
    ];
    List name = ['jana', 'joni', 'jini'];
    List number = ['312312', '3123123', '1231231'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(left: 10),
        itemCount: image.length,
        itemBuilder: (context, index){
          return Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(image[index]),
                      radius: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20,),
                      Text(
                        name[index]
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        number[index]
                      )
                    ],
                  )
                ],
              ),
            ],
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, 'create_contacts');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}