import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Text("Texto 1"), Text("Texto 2"), Text("Texto 3")],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        Row(
          children: [Text("Texto 1"), Text("Texto 2"), Text("Texto 3")],
          mainAxisAlignment: MainAxisAlignment.spaceBetween),
        Container(
          child: Image.asset("/imagens/owl-2.jpg"),
          constraints: BoxConstraints(maxHeight: 200, maxWidth: 200),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
    );
  }
}