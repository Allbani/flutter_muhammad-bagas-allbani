import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        leading: Icon(
          CupertinoIcons.back
        ),
        middle: Text('Chat'),
        trailing: Icon(
          CupertinoIcons.app_badge,
          
        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_alt_circle),
              label: "Contac"
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.phone),
              label: "Call"
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2_fill),
              label: "Chat"
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings_solid),
              label: "Settings"
            ),
          ]
        ), 
        tabBuilder: (BuildContext context, int index){
          return Container(
            child: Center(
              child: Text("$index"),
            ),
          );
        }
      )
    );
  }
}
