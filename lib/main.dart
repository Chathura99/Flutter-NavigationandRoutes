import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/second_page.dart';
import 'screens/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Navigation'),
      routes: <String,WidgetBuilder>{
          '/third':((context) => ThirdPage()),
          '/second':((context) => SecondPage())
      },
    );
  }
}



//learning outcomes

//navigate by push and pop

//navigate by routes

//ListView scroll