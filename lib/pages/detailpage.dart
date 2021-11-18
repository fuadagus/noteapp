import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noteapp/pages/homepage.dart';

class DetailNote extends StatefulWidget {
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
  State<DetailNote> createState() => _DetailNoteState();
}

class _DetailNoteState extends State<DetailNote> {
  TextEditingController _controller = TextEditingController();

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
          title: Text(widget.title),
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
                        "Dibuat pada: ${widget.date.toString().substring(0, 16)}"),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 120,
                    textInputAction: TextInputAction.newline,
                    controller: _controller..text = widget.content,
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
