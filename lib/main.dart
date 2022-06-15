import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Chat Demo APP',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Chat App Demo'),
    );
  }
}
