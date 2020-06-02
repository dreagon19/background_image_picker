import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '1st_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => SafeArea(
          child: Scaffold(
              appBar: AppBar(title: Text('BAckground IMage'),),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  FlatButton(
                    color: Colors.blue,
                    child: Text('Change Background '),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => BackgroundImage11(),),);
                    },
                  ),

                ],
              ),
          ),
        ),
      ),
    );
  }
}
