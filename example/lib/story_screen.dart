import 'package:flutter/material.dart';
import 'package:yoyo_player/yoyo_player.dart';

class StoryScreen extends StatefulWidget {
  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YoYoPlayerStory(
        aspectRatio: 16 / 9,
        url:
            'https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8',
        // "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
        //"https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8",
        //"https://sfux-ext.sfux.info/hls/chapter/105/1588724110/1588724110.m3u8",
        videoStyle: VideoStyle(),
        videoLoadingStyle: VideoLoadingStyle(
          loading: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('image/yoyo_logo.png'),
                  fit: BoxFit.fitHeight,
                  height: 50,
                ),
                Text("Loading video"),
              ],
            ),
          ),
        ),
        onVideoEnd: _onVideoEnd,
        onLeftAreaTap: _onLeftAreaTap,
        onRightAreaTap: _onRightAreaTap,
      ),
    );
  }

  void _onVideoEnd() => print('video: end');

  void _onLeftAreaTap() => print('video: left');

  void _onRightAreaTap() => print('video: right');
}
