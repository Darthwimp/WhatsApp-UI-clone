import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color? primaryColor = Colors.grey[900];
Color secondaryColor = Color(0xFF075E54);
Color? appbarColor = Colors.grey[850];
Color? iconColor1 = Colors.white;
Color? fontColor1 = Colors.grey[400];
Color newChat = Color(0xff00a884);

TextStyle head1 = GoogleFonts.poppins(fontSize: 25, color: fontColor1);
TextStyle head2 = GoogleFonts.poppins(fontSize: 20);
TextStyle chatHead = GoogleFonts.poppins(fontSize: 22, color: Colors.white);
TextStyle chatContent = GoogleFonts.poppins(fontSize: 18, color: fontColor1);
TextStyle newChatTime = GoogleFonts.poppins(fontSize: 16, color: newChat);
TextStyle oldChatTime = GoogleFonts.poppins(fontSize: 16, color: fontColor1);

Icon incomingCall = Icon(Icons.call_received, color: Colors.red);
Icon outgoingCall = Icon(Icons.call_made, color: Colors.green);
Icon videoCall = Icon(Icons.video_call, color: secondaryColor, size: 35);
Icon voiceCall = Icon(Icons.phone, color: secondaryColor, size: 35);

Widget newMessage(String num) {
  return Container(
    height: 22,
    width: 22,
    child: Text(
      num,
      textAlign: TextAlign.center,
      style: TextStyle(color: primaryColor, fontSize: 17),
    ),
    decoration: BoxDecoration(
      color: newChat,
      borderRadius: BorderRadius.circular(50),
    ),
  );
}
