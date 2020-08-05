import 'package:video_player/video_player.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
//import 'package:task1_4/screens/main_page.dart';

class VideoApp extends StatefulWidget {
  VideoApp() : super();

  final String title = "Video App";
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController _controller;
  Future<void> _intializeVideoPlayerFuture;
  
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      "https://media.istockphoto.com/videos/sunrise-over-a-sandstone-arch-formations-video-id625882314",
    );
    _intializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  FlutterStatusbarcolor.setStatusBarColor(Colors.teal.shade500);

  t1() {
    Fluttertoast.showToast(
      msg: "Video Played",
      gravity: ToastGravity.BOTTOM_LEFT,
      fontSize: 20.0,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_SHORT,
    );
  }
  
  t2() {
    Fluttertoast.showToast(
      msg: "Video Paused",
      gravity: ToastGravity.BOTTOM_LEFT,
      fontSize: 20.0,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_SHORT,
    );
  }


  return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text('Video Online'),
        backgroundColor: Colors.redAccent.shade200,
      ),
      backgroundColor: Colors.greenAccent.shade100,
      body: Center(
        child: 
             Container(
          height: 300,
          width: 450,
          //color: Colors.blueAccent,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          border: Border.all(
          color: Colors.black,
          width: 6,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
          child: Column(
          children: <Widget>[
            FutureBuilder(
          future: _intializeVideoPlayerFuture,
          builder: (context, snapshot){
            if (snapshot.connectionState == ConnectionState.done)
            {
              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
                );
            }
            else{
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              t2();
              _controller.pause();
            } else {
              t1();
              _controller.play();
            }
          });
        },
         shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
        child: Card(
          color: Colors.amber,
          child:Text(" Pause  ",textAlign: TextAlign.center,),

          ),
        ),
        RaisedButton(onPressed: () {
          
          setState(() {
              t1();
              _controller.play();
          });
        },
        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
        child: Card(
          color: Colors.amber,
          child:Text(" Play  ",textAlign: TextAlign.center,),

          ),
        ),
            ],
          ),
          ],
          ),
        
        ),    
        
      ),
    ),
  );
  }
}