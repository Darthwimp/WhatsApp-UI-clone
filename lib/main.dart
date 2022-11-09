import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/home.dart';

import 'package:whatsapp_clone/screens/splash_page.dart';
import 'package:whatsapp_clone/style/styles.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: appbarColor!,
        titleTextStyle: head1,
      ),
      scaffoldBackgroundColor: primaryColor,
      primaryColor: primaryColor,
    ),
  ));
}
