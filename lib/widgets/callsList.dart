import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/style/styles.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: callsInfo.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/sample.png"),
            ),
            title: Text(
              callsInfo[index]["name"].toString(),
              style: chatHead,
            ),
            subtitle: Row(
              children: [
                callsInfo[index]["type"] == "incoming"
                    ? incomingCall
                    : outgoingCall,
                Text(callsInfo[index]["date"].toString(), style: chatContent),
                SizedBox(width: 5),
                Text(callsInfo[index]["time"].toString(), style: chatContent),
              ],
            ),
            trailing: callsInfo[index]["mode"]=="video"?videoCall:voiceCall
          );
        },
      ),
    );
  }
}
