import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Chat/chat_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List chatlist = [
    ChatList("Antonia Berger", "Lorem imp", "4min", 2),
    ChatList("Antonia Berger", "Lorem imp", "4min", 2),
    ChatList("Antonia Berger", "Lorem imp", "4min", 2),
    ChatList("Antonia Berger", "Lorem imp", "4min", 2),
  ];
  List item = ["12", "21", "2", "2"];
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
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.75,
          child: ListView.separated(
              itemBuilder: (_, index) {
                return Dismissible(
                  direction: DismissDirection.endToStart,
                  key: ValueKey(chatlist.elementAt(index)),
                  background: Container(
                    // color: Colors.orangeAccent,
                    decoration: const BoxDecoration(
                        // color: Colors.orangeAccent,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),

                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.orangeAccent,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 50,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side:
                              const BorderSide(color: Colors.white70, width: 2),
                        ),
                        child: ListTile(
                          onTap: () =>
                              Get.to(() => ChatScreen(chatlist[index].name)),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 1, vertical: 20),
                          leading: const CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  "https://cdn.onebauer.media/one/empire-images/features/560ec10750e6c513721c38f5/Up%20still.jpg?quality=50&width=1000&ratio=1-1&resizeStyle=aspectfit&format=jpg"),
                              child: Text("")),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chatlist[index].name,
                                style: const TextStyle(
                                    fontSize: 21, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(chatlist[index].message),
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  chatlist[index].minutes,
                                  style: const TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                ),
                                CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.orangeAccent,
                                    child: Text(
                                      chatlist[index].no.toString(),
                                      style: const TextStyle(
                                          fontSize: 9, color: Colors.white),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      )),
                );
              },
              separatorBuilder: (_, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: chatlist.length),
        )
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
  ChatList(this.name, this.message, this.minutes, this.no);
}
