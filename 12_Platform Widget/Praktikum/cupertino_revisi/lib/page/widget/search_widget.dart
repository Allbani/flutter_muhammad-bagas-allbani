import 'package:flutter/cupertino.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      onChanged: (value) {},
      onSubmitted: (value) {},
      autocorrect: true,
      prefixInsets: EdgeInsets.only(left: 160),
    );
  }
}
