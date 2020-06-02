import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

class BackgroundImage11 extends StatefulWidget {
  @override
  _BackgroundImage11State createState() => _BackgroundImage11State();
}

class _BackgroundImage11State extends State<BackgroundImage11> {

  @override
  void initState() {
    super.initState();
    openFile();
  }
  String fileName;
  String path;
  File imageFile;


  Future openFile() async {
//    path = await FilePicker.getFilePath();
    var file = await FilePicker.getFile();
    setState(() {
      imageFile = file;
      print('imageeee:  $imageFile');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('BackgroundImage'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.file(imageFile),
              FlatButton(
                color: Colors.blue,
                child: Text('Change me again '),
                onPressed: () {
                  openFile();
                },
              ),

            ],
          ),
        ),
      ),
    );
    ;
  }
}
