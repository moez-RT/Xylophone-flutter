import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();

    player.play('note$soundNumber.wav');
  }

  _buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: Container(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          },
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
              _buildKey(soundNumber: 1, color: Colors.red),
              _buildKey(soundNumber: 2, color: Colors.orange),
              _buildKey(soundNumber: 3, color: Colors.yellow),
              _buildKey(soundNumber: 4, color: Colors.green),
              _buildKey(soundNumber: 5, color: Colors.teal),
              _buildKey(soundNumber: 6, color: Colors.blue),
              _buildKey(soundNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
