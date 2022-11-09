import 'package:flutter/material.dart';

import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/style/styles.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(info[index]["name"].toString(), style: chatHead),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                info[index]['message'].toString(),
                style: chatContent,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/contact_image.jpg")),
            trailing: Column(
              children: [
                Text(info[index]["time"].toString(),
                    style: info[index]["type"].toString() == "new"
                        ? newChatTime
                        : oldChatTime),
                SizedBox(height: 10),
                info[index]["type"] == "new" ? newMessage(info[index]["number of news"].toString()) : SizedBox(height: 0),
              ],
            ),
          );
        },
      ),
    );
  }
}
