import 'package:flutter/material.dart';
import 'package:whatsapp/CustomUI/Customcard.dart';

import '../Model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  List<ChatModel>chats = [
    ChatModel(
      name: "Artur",
      time: "2:00",
      telefone: "992176948"
    ),
    ChatModel(
      name: "Thiago",
      time: "5:00",
      telefone: "992171926"
    ),
    ChatModel(
      name: "Caio",
      time: "1:30",
      telefone: "991855940"
    ),
    ChatModel(
      name: "Maria",
      time: "13:00",
      telefone: "912345678"
    ),
    ChatModel(
      name: "Carla",
      time: "19:00",
      telefone: "995674777"
    ),
    ChatModel(
      name: "Karol",
      time: "21:00",
      telefone: "947558940"
    ),
    ChatModel(
      name: "Rafael",
      time: "19:00",
      telefone: "337876138"
    ),
    ChatModel(
      name: "Julia",
      time: "19:00",
      telefone: "999829334"
    ),
    ChatModel(
      name: "Camila",
      time: "19:00",
      telefone: "995646391"
    ),
    ChatModel(
      name: "Nicolas",
      time: "19:00",
      telefone: "975647690"
    ),
    ChatModel(
      name: "Cris",
      time: "19:00",
      telefone: "9924567481"
    ),
    ChatModel(
      name: "Rodrigo",
      time: "19:00",
      telefone: "995674777"
    ),
    ChatModel(
      name: "Felipe",
      time: "19:00",
      telefone: "994157388"
    ),
    ChatModel(
      name: "Leticia",
      time: "19:00",
      telefone: "990098431"
    ),
    ChatModel(
      name: "Mateus",
      time: "19:00",
      telefone: "9993456780"
    ),
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
          itemBuilder: (context,index)=>CustomCard(
            ChatModel: chats[index],
          ),
        
      ),
    );
  }
}