import 'package:flutter/material.dart';
import 'package:navegacao/tela2.dart';

void main() {
  runApp(const MaterialApp(home:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Primeira Tela")),
      body: Container(
        child: ElevatedButton(
          child: Text('Tela2'),
          onPressed: () {
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tela2("teste")));
          })
      )
    );
  }
}