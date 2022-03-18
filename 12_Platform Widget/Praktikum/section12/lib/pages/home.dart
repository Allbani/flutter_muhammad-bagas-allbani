import 'package:flutter/material.dart';
import 'package:section12/widget/chat.dart';
import 'package:section12/widget/my_drawer_header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: const Text('Telegram'),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Chat(
                    ImageUrl: 'assets/pic.png', 
                    Massage: 'Ashley',
                    Massage1: ': Wow, Nice Mention!!', 
                    Name: 'Press Room', 
                    Time: '5:53 PM'
                  ),
                  const Divider(
                    indent: 65,
                    thickness: 1,
                    color: Color(0xff707070),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                   Chat(
                    ImageUrl: 'assets/pic_1.png', 
                    Massage: 'Photos',
                    Massage1: '', 
                    Name: 'Monika Goldsmith', 
                    Time: '2:32 PM'
                  ),
                  const Divider(
                    indent: 65,
                    thickness: 1,
                    color: Color(0xff707070),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                   Chat(
                    ImageUrl: 'assets/pic_2.png', 
                    Massage: '',
                    Massage1: 'What???!', 
                    Name: 'Jainan Moore', 
                    Time: '1:12 PM'
                  ),
                  const Divider(
                    indent: 65,
                    thickness: 1,
                    color: Color(0xff707070),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                   Chat(
                    ImageUrl: 'assets/pp.png', 
                    Massage: '',
                    Massage1: 'Helloooo', 
                    Name: 'PaulDogger', 
                    Time: 'Tue'
                  ),
                  const Divider(
                    indent: 65,
                    thickness: 1,
                    color: Color(0xff707070),
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: const MyDrawerHeader1(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.add),
        ),
    );
  }
}
