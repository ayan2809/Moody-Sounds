import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'reusable_card.dart';

void main() => runApp(MoodySounds());

class MoodySounds extends StatelessWidget {
  void playSound(String s) {
    int a = Random().nextInt(5);
    final player = AudioCache();
    player.play('$s$a.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Moody Sounds"),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: ResusableCard(
                      onPress: () {
                        playSound('mysterious');
                      },
                      colour: Colors.orange,
                      cardChild: 'Mysterious',
                    ),
                  ),
                  Expanded(
                    child: ResusableCard(
                      onPress: () {
                        playSound('sad');
                      },
                      colour: Colors.yellow,
                      cardChild: 'Sad',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: ResusableCard(
                      onPress: () {
                        playSound('happy');
                      },
                      colour: Colors.green,
                      cardChild: 'Happy',
                    ),
                  ),
                  Expanded(
                    child: ResusableCard(
                      onPress: () {
                        playSound('cranky');
                      },
                      colour: Colors.teal,
                      cardChild: 'Cranky',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: ResusableCard(
                      onPress: () {
                        playSound('energetic');
                      },
                      colour: Colors.blue,
                      cardChild: 'Energetic',
                    ),
                  ),
                  Expanded(
                    child: ResusableCard(
                      onPress: () {
                        playSound('calm');
                      },
                      colour: Colors.purple,
                      cardChild: 'Calm',
                    ),
                  ),
                ],
              ),
            ),
          ]),
    ));
  }
}
