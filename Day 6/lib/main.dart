import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playxylo(int number) {
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }

  Expanded keysound({Color color, int number, String text}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playxylo(number);
        },
        child: Text(
          text,
          style: TextStyle(
              fontFamily: 'Permanent Marker',
              fontSize: 35,
              color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              keysound(color: Colors.teal[300], number: 1, text: '1'),
              keysound(color: Colors.teal[400], number: 2, text: '2'),
              keysound(color: Colors.teal[500], number: 3, text: '3'),
              keysound(color: Colors.teal[600], number: 4, text: '4'),
              keysound(color: Colors.teal[700], number: 5, text: '5'),
              keysound(color: Colors.teal[800], number: 6, text: '6'),
              keysound(color: Colors.teal[900], number: 7, text: '7'),
            ],
          ),
        ),
      ),
    );
  }
}
