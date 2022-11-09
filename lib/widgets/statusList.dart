import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/style/styles.dart';

class StatusList extends StatelessWidget {
  const StatusList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/pfp.jpeg"),
              ),
              title: Text(
                "My Status",
                style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
              ),
              subtitle: Text(
                "Tap to add status update",
                style: chatContent,
              ),
              trailing: Icon(
                Icons.add,
                size: 40,
                color: newChat,
              ),
            ),
          ),
          Expanded(
            child: Text("No Recent Updates",
                style: GoogleFonts.poppins(fontSize: 15, color: fontColor1)),
          )
        ],
      ),
    );
  }
}
