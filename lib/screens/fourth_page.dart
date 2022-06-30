// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:stu_management/screens/home_page.dart';

class FourthPage extends StatelessWidget {
  FourthPage({Key? key}) : super(key: key);

  TextEditingController title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //to load database data
    title.text = "Chathura";
    String get = title.text;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forth Page - Form'),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context, const MyHomePage(title: ""));
          },
        ),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.verified_user),
                labelText: "Name",
              hintText: "placeholder"
              ),
              maxLength: 8,
              // obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 15),
              onChanged: (text) {
                // run on each tap
                // print(text);
              },
              onSubmitted: (text) {
                //only run after submit
                // print(text);
              },
              //to load database data
              controller: title,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                labelText: "Name",
              hintText: "placeholder"
              ),
              maxLength: 8,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 15),
              autofocus: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              cursorColor: Colors.black,
              maxLength: 8,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 15),
              // enabled: false,
            ),
          ),
        ]),
      ),
    );
  }
}
