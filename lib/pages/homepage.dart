import 'package:flutter/material.dart';
import 'package:noteapp/components/header.dart';
import 'package:noteapp/models/notemodel.dart';
import 'package:get/get.dart';

import 'detailpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: GradientAppBar("Note App"),
          preferredSize: Size.fromHeight(50)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(DetailNote(
                    title: note[0]["title"].toString(),
                    content: note[0]["content"].toString(),
                    date: note[0]["updateAt"],
                  ));
                },
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            note[0]["title"].toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Text(
                          "${note[0]["updateAt"].toString().substring(0, 16)}"),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: Text(note[0]["content"].toString()),
                        ),
                      ),
                    ],
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
