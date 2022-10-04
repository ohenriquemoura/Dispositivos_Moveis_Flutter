import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//variaveis
  double valorConta = 0;
  double tipPercentage = 5.0;
  double tipGarcom = 0;
  double people = 0;
  double tip = 0;
  double totalPorPessoa = 0;
  double total = 0;

  void tipPercentageInc(){
    setState(() {
      tipPercentage++;
    });
  }

  void tipPercentageDec(){
    setState(() {
      tipPercentage--;
    });
  }
  //referente ao botão da porcentagem da gorjeta/tip nesse caso ele diminui o valor
  void peopleDec(){
    setState(() {
      people--;
    });
  }
  //referente ao botão da porcentagem da gorjeta/tip nesse caso ele aumenta o valor
  void peopleInc(){
    setState(() {
      people++;
    });
  }
  //metodo que calcula todas as informações necessarias
  void tipCalc(){
    if(people == 1 ){
        setState(() {
          tip = valorConta * (tipPercentage / 100);
          totalPorPessoa = valorConta + tip;
        });
    }else {
      setState(() {
        tip = valorConta * (tipPercentage / 100);
        tipGarcom = tip * people;
        double billPerPerson = valorConta / people;
        totalPorPessoa = (billPerPerson + tip);
        total = (billPerPerson + tip) * people;
      });

          
    }
    
  }
//container do app em si
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text("Racha Conta", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50,),
          TextField(
            onChanged: (value){
              valorConta = double.parse(value);
            },
            decoration: InputDecoration(
              hintText: "Valor da conta"
            ),
          ),

          //sizebox responsável pela inserção do valor da gorjetas que o garçom irá receber
          SizedBox(height: 20,),
          Row(children: <Widget>[
            Text("Gorjeta %"),
            Spacer(),
            GestureDetector(
              onTap: (){
                tipPercentageDec();
              },
              child: Icon(Icons.arrow_left),
              ),
              Text("${tipPercentage} %"),
              GestureDetector(
              onTap: (){
                tipPercentageInc();
              },
              child: Icon(Icons.arrow_right),
              ),
          ],
          ),

          //sizebox responsável pela inserção da quantidade de pessoas que irao pagar a conta
          SizedBox(height: 16,),
          Row(children: <Widget>[
            Text("Quantidade de pessoas"),
            Spacer(),
            GestureDetector(
              onTap: (){
                peopleDec();
              },
              child: Icon(Icons.arrow_left),
              ),
              Text("${people}"),
              GestureDetector(
              onTap: (){
                peopleInc();
              },
              child: Icon(Icons.arrow_right),
              ),
          ],
          ),
          SizedBox(height: 40,),
          GestureDetector(
            onTap: (){
              tipCalc();
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              decoration: BoxDecoration(color: Colors.green),
              child: Text("Calcular", style: TextStyle(color: Colors.white, fontSize: 17),),
            ),
          ),
          SizedBox(height: 20,),
          Text("Gorjeta por pessoa: $tip"),
          SizedBox(height: 10,),
          Text("Total gorjeta garçom: $tipGarcom"),
          SizedBox(height: 10,),
          Text("Total por pessoa: $totalPorPessoa"),
          SizedBox(height: 10,),
          Text("Total da conta: $total"),
        ],),
      ),
    );
  }
}