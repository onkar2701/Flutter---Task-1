import 'package:flutter/material.dart';
import 'package:task1_4/screens/audio_asset.dart';
import 'package:task1_4/screens/audio_online.dart';
//import 'package:task1_4/screens/audio_online.dart';
//import 'package:task1_4/screens/audionetwork.dart';

import 'package:task1_4/screens/video_asset.dart';
import 'package:task1_4/screens/video_online.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("App"),
          backgroundColor: Colors.redAccent.shade200,
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              Container(
                padding: EdgeInsets.all(5),
                color: Colors.deepOrange,
                height: 60,
                width: 200,
                child: Text("FEATURES",textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Rowdies',fontSize: 30,fontStyle: FontStyle.normal,color: Colors.black),),
              ),
              Text("\n"),
              RaisedButton(
          
          onPressed: () {
            
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VideoApp()),
            );
          },
          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
          child: Card(
          color: Colors.green.shade400,
          child:Text(" Online Video ",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.black),),

          ),                 
        ),
        RaisedButton(
          
          onPressed: () {
            
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VideoAsset()),
            );
          },
          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
          child: Card(
          color: Colors.red.shade300,
          child:Text(" Local Video ",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.black),),

          ),                 
        ),
        RaisedButton(
          
          onPressed: () {
            
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AudioOnline()),
            );
          },
          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
          child: Card(
          color: Colors.green.shade400,
          child:Text(" Online Audio Song ",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.black),),

          ),                 
        ),
        RaisedButton(
          
          onPressed: () {
            
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AudioAsset()),
            );
          },
          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
          child: Card(
          color: Colors.red.shade300,
          child:Text(" Local Audio Song ",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.black),),

          ),                 
        ),

            ],)
          ),
        ),
      ),
    );
  }
}