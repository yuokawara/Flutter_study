import 'package:flutter/material.dart';
import 'package:flare_dart/actor.dart';
import 'package:exam_animation_app/smart_flare_animation.dart';
import 'package:video_player/video_player.dart';

import 'chewie_list_item.dart';

class FlareDemo extends StatefulWidget {
  @override
  _FlareDemoState createState() => _FlareDemoState();
}

class _FlareDemoState extends State<FlareDemo> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 102, 18, 222),
        body: Column(
          children: <Widget>[
            ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/start01.mp4",
              ),
              looping: true,
            ),
            SmartFlareAnimation()
          ],
        ));
  }
}
