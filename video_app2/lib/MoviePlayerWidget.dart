import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

/*
 * 動画ウィジェット
 */
class MoviePlayerWidget extends StatefulWidget {
  String movieURL; // 動画URL
  MoviePlayerWidget(this.movieURL, {String Text}) : super();

  @override
  _MoviePlayerWidgetState createState() => _MoviePlayerWidgetState();
}

class _MoviePlayerWidgetState extends State<MoviePlayerWidget> {
  // コントローラー
  VideoPlayerController _controller;
  // add 0710
  VoidCallback _listener;
  bool _isPlayComplete = false;

  @override
  void initState() {
    // 動画プレーヤーの初期化
    _controller = VideoPlayerController.network(widget.movieURL)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();

        // add 0710
        _listener = () {
          if (!_controller.value.isPlaying) {
            setState(() {
              _isPlayComplete = true;
            });
          }
        };
        _controller.addListener(_listener);
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null) return Container();

    if (_controller.value.initialized) {
      /*
       * 動画
       */
      return Container(
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: Stack(
            children: <Widget>[
              VideoPlayer(_controller),
              _isPlayComplete
                  ? InkWell(
                      onTap: (() {
                        setState(() {
                          _isPlayComplete = false;
                        });
                        _controller.seekTo(Duration.zero);
                        _controller.play();
                      }),
                      child: Center(
                        child: Icon(
                          Icons.play_circle_outline,
                          color: Colors.amberAccent,
                          size: 25.0,
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      );
    } else {
      /*
       * インジケータを表示
       */
      return Container(
        height: 150.0,
        child: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }
}
