import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  String name;
  ChatScreen(this.name, {Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
              color: Colors.white10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.arrow_back),
                    iconSize: 25,
                    color: Colors.black,
                  ),
                  Text(
                    widget.name,
                    style: const TextStyle(fontSize: 21),
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://cdn.onebauer.media/one/empire-images/features/560ec10750e6c513721c38f5/Up%20still.jpg?quality=50&width=1000&ratio=1-1&resizeStyle=aspectfit&format=jpg"),
                    child: Text(""),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 650,
            child: Material(
              elevation: 50,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Card(
                            elevation: 10,
                            color: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white70, width: 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Center(
                                child: Text(
                                  "How are you?",
                                  style: TextStyle(
                                      fontSize: 21, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Card(
                            elevation: 10,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white70, width: 1),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Center(
                                child: Text(
                                  "fine",
                                  style: TextStyle(
                                      fontSize: 21, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Card(
                            elevation: 10,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white70, width: 1),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Center(
                                child: Text(
                                  "How about you?",
                                  style: TextStyle(
                                      fontSize: 21, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 30,
                            ),
                            const CircleAvatar(
                              radius: 25,
                              child: Text(""),
                              backgroundImage: NetworkImage(
                                  "https://cdn.onebauer.media/one/empire-images/features/560ec10750e6c513721c38f5/Up%20still.jpg?quality=50&width=1000&ratio=1-1&resizeStyle=aspectfit&format=jpg"),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Ben",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  "4:00 p.m",
                                  style: TextStyle(fontSize: 11),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Card(
                            elevation: 10,
                            color: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white70, width: 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Center(
                                child: Text(
                                  "fine,Thank you",
                                  style: TextStyle(
                                      fontSize: 21, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Expanded(
                            child: Card(
                                color: Colors.orangeAccent,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.white70, width: 1),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                elevation: 20,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      SizedBox(
                                        width: 300,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              hintText: "Send Message",
                                              border: InputBorder.none,
                                              hintStyle: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                      ),
                                      Icon(
                                        Icons.send,
                                        color: Colors.white,
                                        size: 30,
                                      )
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
