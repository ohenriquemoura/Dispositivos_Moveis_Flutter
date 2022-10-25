import 'package:flutter/material.dart';
import 'package:whatsapp/CustomUI/Customcard.dart';

import '../Model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(name: "Henrique", time: "7:00", telefone: "(37) 97947-6829"),
    ChatModel(name: "Clara", time: "19:00", telefone: "(35) 99747-6081"),
    ChatModel(name: "Lorenza", time: "22:30", telefone: "(34) 98968-2555"),
    ChatModel(name: "Julinha", time: "13:00", telefone: "(38) 99526-7546"),
    ChatModel(name: "Raquel", time: "9:00", telefone: "(34) 99143-8781"),
    ChatModel(name: "Ana", time: "21:00", telefone: "(35) 97955-3301"),
    ChatModel(name: "Marina", time: "9:00", telefone: "(33) 98018-1245"),
    ChatModel(name: "Julio", time: "8:00", telefone: "(33) 99368-5332"),
    ChatModel(name: "Cleber", time: "17:00", telefone: "(32) 99670-1157"),
    ChatModel(name: "Helen", time: "23:00", telefone: "(31) 99942-0084"),
    ChatModel(name: "Cristiano", time: "8:00", telefone: "(37) 97901-2854"),
    ChatModel(name: "Marco", time: "00:00", telefone: "(31) 98615-8185"),
    ChatModel(name: "Fernando", time: "6:00", telefone: "(33) 98075-4963"),
    ChatModel(name: "jefferson", time: "13:00", telefone: "(32) 98541-8448"),
    ChatModel(name: "jair", time: "7:00", telefone: "(35) 98435-8816"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          ChatModel: chats[index],
        ),
      ),
    );
  }
}
