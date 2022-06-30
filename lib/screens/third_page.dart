import 'package:flutter/material.dart';
import 'package:stu_management/screens/home_page.dart';

class ThirdPage extends StatelessWidget {
  ThirdPage({Key? key}) : super(key: key);

  var items = List<String>.generate(100, (index) => "Item ${index+1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context, const MyHomePage(title: ""));
          },
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.badge),
            title: Text(items[index]),
            subtitle: Text("sub-title"),
          );
        },
      ),
    );
  }
}
