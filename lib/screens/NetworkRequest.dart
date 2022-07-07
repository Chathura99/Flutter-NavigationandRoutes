import 'package:flutter/material.dart';

class NetworkRequest extends StatefulWidget {
  @override
  _NetworkRequestState createState() => _NetworkRequestState();
}

class _NetworkRequestState extends State<NetworkRequest> {
  // simulate network NetworkRequest
  void getData() async {
    // simulate netwrok request to get user Email
    String email = await Future.delayed(Duration(seconds: 5), () {
      return 'chathura.manoharas@gmail.com';
    });

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return '\nname: Chathura, age: 25';
    });
    // need above data before the print
    print(email + " - " + bio);
    print("The end");
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('other codes');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asynchronous Programming"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'GET DATA',
              style: TextStyle(
                fontSize: 22,
              ),
            )
            // RaisedButton(child: Text('GET DATA'), onPressed: () {})
          ],
        ),
      ),
    );
  }
}
