import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          centerTitle: false,
          bottom: const TabBar(tabs: [
            Text("CHATS"),
            Text("STATUS"),
            Text("CALLS"),
          ]),
        ),
      ),
    );
  }
}
