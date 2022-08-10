import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const XylophoneApp(),
    );

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    //player.play('assets_note$soundNumber.wav');
    player.setSource(AssetSource('assets_note$soundNumber.wav'));
    //player.load('assets_note$soundNumber.wav');
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
        child: Text('$soundNumber'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(
              color: Colors.blue,
              soundNumber: 1,
            ),
            buildKey(color: Colors.red, soundNumber: 2),
            buildKey(color: Colors.teal, soundNumber: 3),
            buildKey(color: Colors.brown, soundNumber: 4),
            buildKey(color: Colors.pinkAccent, soundNumber: 5),
            buildKey(color: Colors.yellow, soundNumber: 6),
            buildKey(color: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
