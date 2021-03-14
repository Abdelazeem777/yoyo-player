import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yoyo_player/yoyo_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  bool fullscreen = false;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YoYoPlayer(
        aspectRatio: 16 / 9,
        url:
            //"https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
            "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8",
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
      ),
    );
  }
}
