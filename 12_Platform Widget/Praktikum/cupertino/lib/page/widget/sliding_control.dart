import 'package:flutter/cupertino.dart';

class SlidingControl extends StatelessWidget {
  const SlidingControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSlidingSegmentedControl(
        children: const {
          0 : Text('All Chat'),
          1 : Text('Work'),
          2 : Text('Unread'),
          3 : Text('Personal'),
        }, 
        onValueChanged: (value){},
        backgroundColor: CupertinoColors.white,
    );
  }
}
