import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? selectedFile;
  @override
  Widget build(BuildContext context) {

    Future<File?> selectFile() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if(result!=null){
        return File(result.files.single.path!);
      }
      return null;

    }
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async{
              File? myFile= await selectFile();

              if(myFile!=null){
                selectedFile=myFile;
                setState(() {
                });
              }
            }, child: Text("Select file")),
            selectedFile!=null? Image.file(selectedFile!,height: 300,):SizedBox(),
          ],
        ),
      ),
    );
  }
}
