import 'package:flutter/material.dart';
import 'package:whatsapp_clone/style/styles.dart';
import 'package:whatsapp_clone/widgets/callsList.dart';
import 'package:whatsapp_clone/widgets/chatsList.dart';
import 'package:whatsapp_clone/widgets/statusList.dart';

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
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search, color: fontColor1,)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: fontColor1,))
          ],
          bottom: TabBar(
              indicatorWeight: 5,
              indicatorColor: secondaryColor,
              labelColor: secondaryColor,
              unselectedLabelColor: fontColor1,
              tabs: [
                Text("CHATS", style: head2),
                Text("STATUS", style: head2),
                Text("CALLS", style: head2),
              ]),
        ),
        body: TabBarView(children: [
          Chats(),
          StatusList(),
          Calls(),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.comment,
            size: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
