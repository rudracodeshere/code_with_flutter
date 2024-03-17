import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatefulWidget {
  const Quizzler({super.key});

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<Icon> iconList = [];
  List<String> ques = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.'
  ];
  List<bool> answer = [false, true, true];
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(70.0),
                      child: Text(
                        ques[num],
                        style: TextStyle(color: Colors.white, fontSize: 30.0),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  if (answer[num] == true) {
                    print('correct');
                  } else {
                    print('incorrect');
                  }
                  setState(() {
                    num++;
                  });
                },
                child: Container(
                  color: Colors.green,
                  height: 100.0,
                  child: Center(
                    child: Text(
                      'True',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  if (answer[num] == false) {
                    print('correct');
                  } else {
                    print('incorrect');
                  }
                  setState(() {
                    num++;
                  });
                },
                child: Container(
                  height: 100.0,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'False',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: iconList,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
