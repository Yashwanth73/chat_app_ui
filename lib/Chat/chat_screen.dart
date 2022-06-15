import 'package:chat_app_ui/Chat/Widgets/message_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  String name;
  String message;
  String mymessage;
  ChatScreen(this.name, this.message, this.mymessage, {Key? key})
      : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 90,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
                        backgroundImage: AssetImage("assets/icon.jpg"),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            MessageWidget(widget.name, widget.message, widget.mymessage),
          ],
        ),
      ),
    );
  }
}
