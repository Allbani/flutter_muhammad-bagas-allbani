import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';


class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {

  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post')
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        child: ListView(
          children: [
            buildFilePicker(context),
            const SizedBox(
              height: 20
            ),
            buildDatePicker(context),
            const SizedBox(
              height: 20,
            ),
            buildColorPicker(context),
            const SizedBox(
              height: 20,
            ),
            buildCaption(context),
            ElevatedButton(
              onPressed: (){}, 
              child: Text('Simpan')
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFilePicker (BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Cover',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(
          height: 8
        ),
        Container(
          height: 40,
          width: double.infinity,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey
            ),
            onPressed: (){
              _pickFile();
            }, 
            child: Text(
              'Pilih File',
              style: TextStyle(
                color: Colors.grey[100]
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    final file = result.files.first;
    _openFile(file);
  }

  void _openFile(PlatformFile file){
    OpenFile.open(file.path);
  }

  Widget buildDatePicker(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Publish At',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 40,
          width: double.infinity,
          child: TextButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(color: Colors.grey),               
              ),
              foregroundColor: MaterialStateProperty.all(
                Colors.grey
              ),
              padding: MaterialStateProperty.all(
                const EdgeInsets.only(right: 260)
              ),
            ),
            onPressed: () async {
              final selectDate = await showDatePicker(
                context: context, 
                initialDate: currentDate, 
                firstDate: DateTime(2000), 
                lastDate: DateTime(currentDate.year + 10)
              );

              setState(() {
                if (selectDate != null){
                  _dueDate = selectDate;
                }
              });
            }, 
            child: Text(
              DateFormat('dd/MM/yyyy').format(_dueDate),
            ),
          ),
        )
      ]
    );
  }

  Widget buildColorPicker(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Color Theme',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentColor
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          width: double.infinity,
          child: TextButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(color: Colors.grey),               
              ),
              foregroundColor: MaterialStateProperty.all(
                Colors.grey
              ),
              padding: MaterialStateProperty.all(
                const EdgeInsets.only(right: 260)
              ),
            ),
            onPressed: (){
              showDialog(
                context: context, 
                builder: (context){
                  return AlertDialog(
                    title: const Text('Pick Your Color'),
                    content: BlockPicker(
                      pickerColor: _currentColor, 
                      onColorChanged: (color){
                        setState(() {
                          _currentColor = color;
                        });
                      }
                    ),
                    actions: [
                      TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        }, 
                        child: const Text('Save')
                      ),
                    ],
                  );
                }
              );
            }, 
            child: const Text('Pick a Color')
          ),
        )
      ],
    );
  }

  Widget buildCaption(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Caption',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 100,
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey
                )
              ),
            ),
          ),
        )
      ],
    );
  }
}