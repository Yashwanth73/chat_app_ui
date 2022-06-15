import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Chat/chat_screen.dart';

class MessageList extends StatelessWidget {
  List chatlist;
  MessageList(this.chatlist, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      child: ListView.separated(
          itemBuilder: (_, index) {
            return Dismissible(
              onDismissed: (direction) {
                chatlist.removeAt(index);
              },
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
                      side: const BorderSide(color: Colors.white70, width: 2),
                    ),
                    child: ListTile(
                      onTap: () => Get.to(() => ChatScreen(chatlist[index].name,
                          chatlist[index].message, chatlist[index].mymessage)),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 1, vertical: 20),
                      leading: const CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/icon.jpg"),
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
                                  fontSize: 11, fontWeight: FontWeight.w500),
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
    );
  }
}
