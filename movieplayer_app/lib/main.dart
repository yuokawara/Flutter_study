import "package:movieplayer_app/chewie_list_item.dart";
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'chewie_list_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: ListView(
        // アーカイブスより20個movie設置
        children: <Widget>[
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              "videos/start01.mp4",
            ),
            looping: true,
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002100/D0002100031_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            // This URL doesn't exist - will display an error
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002161/D0002161296_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002161/D0002161251_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002161/D0002161207_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002161/D0002161435_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002161/D0002161144_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002161/D0002161112_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002160/D0002160735_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002161/D0002161067_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002160/D0002160734_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002160/D0002160289_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002160/D0002160168_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002031/D0002031289_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002021/D0002021054_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002100/D0002100016_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002160/D0002160542_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002031/D0002031200_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002021/D0002021130_00000_V_000.mp4",
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002021/D0002021020_00000_V_000.mp4",
            ),
          ),
        ],
      ),
    );
  }
}
