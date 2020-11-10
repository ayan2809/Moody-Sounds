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
  Expanded buildKey(String b, Color s)
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

        body: new GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,

          children: <Widget>[
            new Container(
              
                child: new Card(
                    child : new Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                        Center(child: Text('Mysterious',

                        )),
                        buildKey('mysterious',Colors.orange),


            ],

        ),
            ),
            ),
            new Container(
              child: new Card(
                child : new Column(

                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[

                    Center(child: Text('Sad',

                    )),
                     buildKey('sad',Colors.yellow),


                  ],

                ),
              ),
            ),
            new Container(
              child: new Card(
                child : new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(child: Text('Happy',

                    )),

                     buildKey('happy',Colors.green),


                  ],

                ),
              ),
            ),
            new Container(
              child: new Card(
                child : new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(child: Text('Mysterious',

                    )),
                  buildKey('mysterious',Colors.teal),


                  ],

                ),
              ),
            ),
            new Container(
              child: new Card(

                child : new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[

                    Center(child: Text('Energetic',

                    )),
                     buildKey('energetic',Colors.blue),


                  ],

                ),
              ),
            ),
            new Container(
              child: new Card(
                child : new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(child: Text('Calm',

                    )),
                      buildKey('calm',Colors.purple),

                  ],

                ),
              ),
            ),
          ]
        ),


          ),

    );
  }
}



