import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(MoodySounds());

class MoodySounds extends StatelessWidget {


  void playSound(String s){
    int a=Random().nextInt(5);
    final player = AudioCache();
    player.play('$s$a.wav');
  }
  Expanded buildKey(String b, Color s,int a)
  {

    return Expanded(

      child:FlatButton (

        color: s ,

        onPressed: (){
          playSound(b);

        },

      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Moody Sounds"),
        ),

        body: SafeArea(


          child: Container(
            width: 1000,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                buildKey('cranky',Colors.red,1),
                buildKey('mysterious',Colors.orange,2),
                buildKey('sad',Colors.yellow,3),
                buildKey('happy',Colors.green,4),
                buildKey('mysterious',Colors.teal,5),
                buildKey('energetic',Colors.blue,6),
                buildKey('calm',Colors.purple,7),
              ],
            ),


          ),
        ),
      ),
    );
  }
}



