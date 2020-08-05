import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';



class AudioAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {




AudioPlayer newPlayer = new AudioPlayer();
AudioCache audio = new AudioCache(fixedPlayer: newPlayer);
var play = 0 ;
var stop = 1;

playAudio() {
if (play == 0 || stop == 1) {audio.play("audio/shape.mp3");play = 1;stop = 0;}
}
pauseAudio() { 
if (play == 1) {newPlayer.pause();play = 0;}
}
stopAudio() {
if (play == 1 && stop == 0) {newPlayer.stop();play = 0;stop = 1;}
}
var image1 = Image.asset(
      "images/shape.jpg",
      width: 500,
      height: 300,
    );
var image2 = Image.asset(
      "images/way.jpg",
      width: 70,
      height: 70,
    );
var image3 = Image.asset(
      "images/faded.jpg",
      width: 70,
      height: 70,
    );
var image4 = Image.asset(
      "images/alone.jpg",
      width: 70,
      height: 70,
    );
var image5 = Image.asset(
      "images/shape.jpg",
      width: 70,
      height: 70,
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
    Row(
      children: <Widget>[
        image2,
        Text("    On  My Way",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal,color: Colors.white),),
      ],
    ),
    Row(
      children: <Widget>[
        image3,
        Text("    Faded",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal,color: Colors.white),),
      ],
    ),
    Row(
      children: <Widget>[
        image4,
        Text("    Alone",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal,color: Colors.white),),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
       
        image5,
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