import 'package:flutter/cupertino.dart';
import 'package:sction_11/page/widget/chat.dart';
import 'package:sction_11/page/widget/search_widget.dart';
import 'package:sction_11/page/widget/sliding_control.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_alt_circle), label: "Contac"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone), label: "Call"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_2_fill), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings_solid), label: "Settings"),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoPageScaffold(
            navigationBar: const CupertinoNavigationBar(
              leading: CupertinoButton(
                padding: EdgeInsets.zero,
                child: Text('Edit',
                style: TextStyle(
                  color: CupertinoColors.activeBlue
                ),
                ), 
                onPressed: null
              ),
              middle: Text('Chat'),
              trailing: Icon(CupertinoIcons.plus_app_fill),
            ),
            child: ListView(
              children: [
                const SearchWidget(),
                const SlidingControl(),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Chat()
                    ],
                  ),
                )
              ],
            )
        );
      }
    );
  }
}
