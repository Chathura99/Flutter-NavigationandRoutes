
import 'package:flutter/material.dart';
import 'package:stu_management/screens/NetworkRequest.dart';
import 'package:stu_management/screens/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Home Page',
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text("Go to 2"),
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.blue,
              ),
              onPressed: () {
                //second method to navigate
                Navigator.of(context).pushNamed("/second");
              },
            ),
            Text("Go to 3"),
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.blue,
              ),
              onPressed: () {
                //second method to navigate
                Navigator.of(context).pushNamed("/third");
              },
            ),
            Text("Go to 4"),
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.blue,
              ),
              onPressed: () {
                //second method to navigate
                Navigator.of(context).pushNamed("/fourth");
              },
            ),
            Text("Go to 5"),
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.blue,
              ),
              onPressed: () {
                //second method to navigate
                Navigator.of(context).pushNamed("/fifth");
              },
            ),
                        Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                  child: Text('CLICK ME'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NetworkRequest()),
                    );
                  }),
            )
          ])
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //first method to navigate

          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));

          
        },
        tooltip: 'Second page',
        child: const Text('2'),
      ),
      
    );
  }
}
