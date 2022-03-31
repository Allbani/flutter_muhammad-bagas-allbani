import 'package:dialog_bottom/pages/full_screen.dart';
import 'package:flutter/material.dart';

class ImageBottomSheets extends StatelessWidget {
  const ImageBottomSheets({Key? key, required this.gambarBottom}) : super(key: key);

  final String gambarBottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(gambarBottom),
            ),
          ),
        ),
        TextButton(
          onPressed: (){
            showDialog(
              context: context, 
              builder: (context) => AlertDialog(
                content: const Text('Ingin Tampilkan Layar Penuh?'),
                actions: [
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    child: const Text('No')
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => FullScreen(
                            gambarFull: gambarBottom
                          )
                        )
                      );
                    },
                    child: const Text('Yes')
                  ),
                ],
              )
            );
          }, 
          child: const Text(
            'Tampilkan Layar Penuh',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16
            ),
          )
        ),
      ],
    );
  }
}