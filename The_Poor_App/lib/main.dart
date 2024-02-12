import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("The Poor App"),
          backgroundColor: Colors.brown,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/no-poverty.png'),
          ),
        ),
      ),
    ),
  );
}
