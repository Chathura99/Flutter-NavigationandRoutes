import 'package:flutter/material.dart';
import 'package:stu_management/screens/home_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page - List'),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context, const MyHomePage(title: ""));
          },
        ),
      ),
      body: ListView(
        // scrollDirection:Axis.vertical,
        children: [
          Text("Second Page"),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text("Camera"),
            subtitle: Text("settings"),
            trailing: Icon(Icons.menu) ,
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text("Camera"),
            subtitle: Text("settings"),
            trailing: Icon(Icons.menu) ,
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text("Camera"),
            subtitle: Text("settings"),
            trailing: Icon(Icons.menu) ,
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text("Camera"),
            subtitle: Text("settings"),
            trailing: Icon(Icons.menu) ,
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text("Camera"),
            subtitle: Text("settings"),
            trailing: Icon(Icons.menu) ,
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text("Camera"),
            subtitle: Text("settings"),
            trailing: Icon(Icons.menu) ,
            onTap: (){},
          ),
          ],
      ),
    );
  }
}
