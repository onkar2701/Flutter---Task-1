import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';



class AudioOnline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {




AudioPlayer newPlayer = new AudioPlayer();
AudioCache audio = new AudioCache(fixedPlayer: newPlayer);
var play = 0 ;
var stop = 1;

playAudio() {
if (play == 0 || stop == 1) {audio.play("https://paglasongs.com/files/id/1440");play = 1;stop = 0;}
}
pauseAudio() { 
if (play == 1) {newPlayer.pause();play = 0;}
}
stopAudio() {
if (play == 1 && stop == 0) {newPlayer.stop();play = 0;stop = 1;}
}
var image1 = Image.asset(
      "images/dil.jpg",
      width: 500,
      height: 300,
    );
    return MaterialApp(
      home:  Scaffold(
appBar: AppBar(
title: Text("My Music Player"),
backgroundColor: Colors.redAccent.shade200,
),
body: Container(
  height: double.infinity,
  width: double.infinity,
  color: Colors.black,
  child: Column(children: <Widget>[
    image1,
    Text("\n\n"),
     
    Row(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        RaisedButton(
              color: Colors.black,
              onPressed: playAudio,
              child: Icon(Icons.play_arrow,color: Colors.white),
            ),
            RaisedButton(
              color: Colors.black,
              onPressed: pauseAudio,
              child: Icon(Icons.pause,color:Colors.white),
            ),
            RaisedButton(
              color: Colors.black,
              onPressed: stopAudio,
              child: Icon(Icons.stop,color: Colors.white,),
            )
      ],
    ),

  ],)
  
),

),
debugShowCheckedModeBanner: false,   
    );
    }
  }