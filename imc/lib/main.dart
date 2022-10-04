import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TPeso = TextEditingController();
  final Altura = TextEditingController();
  var mensagem = "Retorno";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Calculo de IMC")),
        body: Body(),
        ));
  }

  Body(){
    return Column(
      children: [
        TextFormField( controller: TPeso, keyboardType: TextInputType.number,decoration: InputDecoration(labelText: "Peso")),
        TextFormField(controller: Altura, keyboardType: TextInputType.number,decoration: InputDecoration(labelText: "Altura")),
        ElevatedButton(onPressed: calcular, child: Text("Calcular")),
        Text(mensagem)
      ],
    );
  }

  calcular(){
    double peso, altura, imc;
    peso = double.parse(TPeso.text);
    altura = double.parse(Altura.text);
    imc = peso/ (altura * altura);
    setState(() {
    mensagem = imc.toStringAsPrecision(4);
    });


    if(imc<17){
      mensagem = "Muito abaixo do peso" + imc.toStringAsPrecision(4);
    }else if (imc<18.5){
      mensagem = "Abaixo do peso" + imc.toStringAsPrecision(4);
    }else if (imc<25){
      mensagem = "Peso normal" + imc.toStringAsPrecision(4);
    }else if (imc<30){
      mensagem = "Acima do peso" + imc.toStringAsPrecision(4);
    }else if (imc<35){
      mensagem = "Obesidade grau I" + imc.toStringAsPrecision(4);
    }else if (imc<40){
      mensagem = "Obesidad grau II" + imc.toStringAsPrecision(4);
    }else{
      mensagem = "Obesidade grau III" +imc.toStringAsPrecision(4);
    }
  }
}