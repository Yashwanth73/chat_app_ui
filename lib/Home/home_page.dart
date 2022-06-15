import 'package:chat_app_ui/Home/chat_list.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List chatlist = [
    ChatList("Antonia Berger", "HI", "4min", 1, "hi"),
    ChatList("Ben", "Hello", "4min", 2, "Hi"),
    ChatList("Jhon", "How are you", "4min", 5, "Hi"),
    ChatList("Samuel", "Need To Talk with you", "4min", 3, "Hi"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Messages",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.search,
                size: 30,
              ),
            ],
          ),
        ),
        MessageList(chatlist),
      ])),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 20,
        child: const Icon(
          Icons.message,
          size: 30,
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          selectedItemColor: Colors.purple,
          elevation: 10,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
                label: "People"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.toggle_off,
                  size: 30,
                ),
                label: "Settings")
          ]),
    );
  }
}

class ChatList {
  String name;
  String message;
  String minutes;
  int no;
  String mymessage;
  ChatList(this.name, this.message, this.minutes, this.no, this.mymessage);
}
