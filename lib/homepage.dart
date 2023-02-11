import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Myclass extends StatelessWidget {
  Future nameaddfctn() async {
    await FirebaseFirestore.instance.collection('Book');
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.amber,
                child: Text("Save"),
                onPressed: () {
                  nameaddfctn();
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}
