import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:noteapp/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),
      ),
      title: 'Note App',
      home: HomePage(),
    );
  }
}
