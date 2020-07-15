import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:search_movie_test_app/chewie_list_item.dart';

void main() {
  runApp(new MaterialApp(
    title: 'exam-03',
    home: LandingScreen(),
  ));
}

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test examScreen'),
        ),
        body: ListView(
          children: <Widget>[
            ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/start01.mp4",
              ),
              looping: true,
            ),
          ],
        ));
  }
}
