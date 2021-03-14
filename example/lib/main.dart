import 'package:flutter/material.dart';

import 'story_screen.dart';
import 'video_player_screen.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false, title: 'Material App', home: Home()));

class Home extends StatefulWidget {
  @override
  __HomeState createState() => __HomeState();
}

class __HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Play video'),
          onPressed: _goToStoryVideoPlayer
          //_goToVideoPlayerScreen
          ,
        ),
      ),
    );
  }

  void _goToVideoPlayerScreen() => Navigator.push(
      context, MaterialPageRoute(builder: (context) => VideoPlayerScreen()));

  void _goToStoryVideoPlayer() => Navigator.push(
      context, MaterialPageRoute(builder: (context) => StoryScreen()));
}
