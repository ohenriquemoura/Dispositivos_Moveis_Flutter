import 'dart:html';

import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(255, 94, 7, 7)),
      home: Homescreen(),
    );
  }
}
