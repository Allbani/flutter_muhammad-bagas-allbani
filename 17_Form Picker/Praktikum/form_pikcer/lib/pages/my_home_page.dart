import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:form_pikcer/pages/priview_post.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.grey.shade100;
  File? hasilGambar;
  TextEditingController caption = TextEditingController();
  final textController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        centerTitle: true
      ),
      body: Container(
        padding: const EdgeInsets.all(18),
        child: ListView(
          children: [
            buildFilePicker(context),
            const SizedBox(
              height: 20
            ),
            buildDatePicker(context),
            const SizedBox(
              height: 20
            ),
            buildColorPicker(context),
            const SizedBox(
              height: 20
            ),
            buildCaption(context),
            const SizedBox(
              height: 20,
            ),
            buildButton(context)
          ],
        ),
      )
    );
  }

  Widget buildFilePicker(BuildContext context){
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
          )
        )
      ],
    );
  }
  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    PlatformFile tempFile = result.files.first;

    setState(() {
      hasilGambar = File(tempFile.path.toString());
    });
  }

  Widget buildDatePicker (BuildContext context){
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
        TextFormField(
          readOnly: true,
          controller: textController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'dd/mm/yyyy',
          ),
          onTap: () async {
            final selectDate = await showDatePicker(
              context: context, 
              initialDate: currentDate,
              firstDate: DateTime(1900), 
              lastDate: DateTime(currentDate.year + 10),
            );
            setState(() {
              if (selectDate != null){
                _dueDate =selectDate;
                textController.text = DateFormat('dd MM yyyy').format(_dueDate);
              }
            });
          },
        ),
      ],
    );
  }

  Widget buildColorPicker(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Color Theme',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          readOnly: true,
          decoration: InputDecoration(
            fillColor: _currentColor,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Pick Color',
          ),
          onTap: (){
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
                    )
                  ],
                );
              }
            );
          },
        ),
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
          height: 8,
        ),
        TextFormField(
          controller: caption,
          maxLines: 10,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )
        )
      ],
    );
  }

  Widget buildButton(BuildContext context){
    return ElevatedButton(
      onPressed: (){
        Navigator.push(
          context, MaterialPageRoute(
            builder: (context) => PriviewPost(
              gambar: hasilGambar!.path, 
              date: '$_dueDate', 
              warna: _currentColor,
              text: caption.text,
            )
          ),
        );
      }, 
      child: const Text('Simpan')
    );
  }
}