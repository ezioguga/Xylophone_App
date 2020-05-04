import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber, String noteName}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(noteName),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(
                  color: Colors.purple, soundNumber: 1, noteName: "Note 1"),
              buildKey(color: Colors.red, soundNumber: 2, noteName: "Note 2"),
              buildKey(color: Colors.green, soundNumber: 3, noteName: "Note 3"),
              buildKey(color: Colors.brown, soundNumber: 4, noteName: "Note 4"),
              buildKey(color: Colors.amber, soundNumber: 5, noteName: "Note 5"),
              buildKey(color: Colors.blue, soundNumber: 6, noteName: "Note 6"),
              buildKey(color: Colors.teal, soundNumber: 7, noteName: "Note 7"),
            ],
          ),
        ),
      ),
    );
  }
}
