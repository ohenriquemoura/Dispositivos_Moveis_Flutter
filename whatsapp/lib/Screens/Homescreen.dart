import'package:flutter/material.dart';
import 'package:whatsapp/Pages/ChatPage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin{
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp clone"),
        
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          ChatPage(),
          Text("status"),
        ],
      ),
    );
  }
}