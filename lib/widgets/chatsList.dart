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
        itemCount: chatsInfo.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (() {}),
            child: ListTile(
              title: Text(chatsInfo[index]["name"].toString(), style: chatHead),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  chatsInfo[index]['message'].toString(),
                  style: chatContent,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/contact_image.jpg")),
              trailing: Column(
                children: [
                  Text(chatsInfo[index]["time"].toString(),
                      style: chatsInfo[index]["type"].toString() == "new"
                          ? newChatTime
                          : oldChatTime),
                  SizedBox(height: 10),
                  chatsInfo[index]["type"] == "new"
                      ? newMessage(chatsInfo[index]["number of news"].toString())
                      : SizedBox(height: 0),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
