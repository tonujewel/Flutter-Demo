import "package:flutter/material.dart";
import 'package:hello_flutter/app_screen/first_screen.dart';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Flutter app",
        home: Scaffold(
            appBar: AppBar(
              title: Text("My first app screen"),
            ),
            body: FirstScreen()));
  }

}
