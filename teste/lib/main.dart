import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home:MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "texto",
          style: formataTexto(),
        ),
        Container(
          child: ElevatedButton(onPressed: clique, child: Text("Voltar")),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 15),
          decoration: BoxDecoration(border: Border.all(width: 3))
          )
       
        ],
    );
  }

  clique(){
    print("Clique");
  }


  formataTexto(){
    return TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            letterSpacing: 10,
            wordSpacing: 20,
            decoration: TextDecoration.none,
      );
  }
}