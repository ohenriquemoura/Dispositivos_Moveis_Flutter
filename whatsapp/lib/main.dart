import 'dart:html';

import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Homescreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF075E54), accentColor: Color(0xFF128C7E),
      ),
      home: Homescreen(),
    );
  }
}