import 'package:flutter/material.dart';

class MessageWidget extends StatefulWidget {
  String name;
  String mymessage;
  String message;
  MessageWidget(this.name, this.message, this.mymessage, {Key? key})
      : super(key: key);

  @override
  State<MessageWidget> createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  List mymess = ["How are you"];
  TextEditingController mess = TextEditingController();
  List usermess = ["Hello"];
  String newmess = "";
  addNewMess() {
    FocusScope.of(context).unfocus();
    mymess.add(newmess);
    mess.clear();
  }

  @override
  void initState() {
    mymess.add(widget.mymessage);
    usermess.add(widget.message);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 580,
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 500,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: ListView.separated(
                reverse: false,
                itemBuilder: (_, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Card(
                          elevation: 10,
                          color: Colors.orangeAccent,
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white70, width: 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Center(
                                child: Text(
                                  mymess[index].toString(),
                                  style: const TextStyle(
                                      fontSize: 21, color: Colors.white),
                                ),
                              )))
                    ],
                  );
                },
                separatorBuilder: (_, index) {
                  return Dismissible(
                    key: ValueKey(usermess.elementAt(index)),
                    onDismissed: (direction) => usermess.removeAt(index),
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
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.close,
                                color: Colors.black,
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              elevation: 10,
                              color: Colors.white,
                              shape: const RoundedRectangleBorder(
                                side:
                                    BorderSide(color: Colors.white70, width: 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Center(
                                  child: Text(
                                    widget.message,
                                    style: const TextStyle(
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
                                  backgroundImage:
                                      AssetImage("assets/icon.jpg")),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.name,
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                  const Text(
                                    "4:00 p.m",
                                    style: TextStyle(fontSize: 11),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: mymess.length,
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Expanded(
                  child: Card(
                      color: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 20,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 300,
                              child: TextField(
                                controller: mess,
                                onChanged: (value) {
                                  setState(() {
                                    newmess = value;
                                  });
                                },
                                decoration: const InputDecoration(
                                    hintText: "Send Message",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(color: Colors.white)),
                              ),
                            ),
                            IconButton(
                                icon: const Icon(
                                  Icons.send,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                color: Colors.white,
                                onPressed: newmess.trim().isEmpty
                                    ? null
                                    : addNewMess())
                          ],
                        ),
                      )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
