import 'package:flutter/material.dart';
import 'package:stu_management/screens/home_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Second Page'),
         leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed:(){
            Navigator.pop(context,const MyHomePage(title: ""));
          } ,
          ),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Second Page',
            ),
          ],
        ),
      ),
    );
  }
}