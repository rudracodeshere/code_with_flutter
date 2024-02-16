import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70.0,
                backgroundImage: NetworkImage('https://shorturl.at/bdjY6'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Monkey D Luffy",
                style: TextStyle(
                    fontFamily: "ProtestRevolution",
                    color: Colors.white54,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "King Of Pirates",
                style: TextStyle(
                    fontFamily: "ProtestRevolution",
                    color: Colors.white54,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 80.0,
                child: Divider(
                  color: Colors.white60,
                ),
              ),
              Card(
                color: Colors.white38,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 100.0),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+111111111'),
                ),
              ),
              Card(
                color: Colors.white38,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 100.0),
                child: ListTile(
                  leading: Icon(Icons.mail),
                  title: Text('abc@gmail.com'),
                ),
              ),
              SizedBox(
                width: 80.0,
                child: Divider(
                  color: Colors.white60,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
