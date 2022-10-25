import 'package:flutter/material.dart';
import 'package:whatsapp/Model/ChatModel.dart';

import '../Screens/IndividualPage.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, this.ChatModel});
  final ChatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => IndividualPage(
                      ChatModel: ChatModel,
                    ))));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('images/batman.png'),
              radius: 30,
              backgroundColor: Color.fromARGB(255, 94, 7, 7),
            ),
            title: Text(
              ChatModel.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 5,
                ),
                Text(
                  ChatModel.telefone,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                )
              ],
            ),
            trailing: Text(ChatModel.time),
          ),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
