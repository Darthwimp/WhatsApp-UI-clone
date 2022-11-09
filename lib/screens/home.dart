import 'package:flutter/material.dart';
import 'package:whatsapp_clone/style/styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          centerTitle: false,
          bottom: TabBar(indicatorColor: secondaryColor, tabs: [
            Text("CHATS", style: head2),
            Text("STATUS", style: head2),
            Text("CALLS", style: head2),
          ]),
        ),
        body: TabBarView(
          children: [
            Text("tab-1"),
            Text("tab-2"),
            Text("tab-3")
          ]),
      ),
    );
  }
}


