import 'package:flutter/material.dart';

import 'package:whatsapp_clone/screens/splash_page.dart';
import 'package:whatsapp_clone/style/styles.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: appbarColor!,
        titleTextStyle: head1,
      ),
      scaffoldBackgroundColor: primaryColor,
      primaryColor: primaryColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: newChat),
    ),
  ));
}
