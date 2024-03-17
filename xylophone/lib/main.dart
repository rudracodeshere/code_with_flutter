import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Future<void> playSound(int a) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$a.wav'));
  }

  Expanded box({required int ab, required Color colors}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          enableFeedback: false,
        ),
        onPressed: () {
          playSound(ab);
        },
        child: Container(color: colors),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              box(ab: 1, colors: Colors.red),
              box(ab: 2, colors: Colors.orange),
              box(ab: 3, colors: Colors.yellow),
              box(ab: 4, colors: Colors.green),
              box(ab: 5, colors: Colors.blue),
              box(ab: 6, colors: Colors.indigo),
              box(ab: 7, colors: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
