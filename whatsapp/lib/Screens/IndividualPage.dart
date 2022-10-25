import 'package:flutter/material.dart';
import 'package:whatsapp/Model/ChatModel.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({super.key, this.ChatModel});
  final ChatModel;

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [Text(widget.ChatModel.name)],
        ),
      ),
    );
  }
}
