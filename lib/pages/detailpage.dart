import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noteapp/pages/homepage.dart';

class DetailNote extends StatelessWidget {
  const DetailNote(
      {Key? key,
      required this.title,
      required this.content,
      required this.date})
      : super(key: key);
  final String title;
  final String content;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios_new)),
          title: Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Dibuat pada: ${date.toString().substring(0, 16)}"),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    content,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
