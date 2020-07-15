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

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("AppBar");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: <Widget>[
          IconButton(
            icon: cusIcon,
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_add),
          ),
        ],
        title: cusSearchBar,
      ),
      drawer: Drawer(),
      body: ListView(
        // アーカイブスより20個movie設置
        children: <Widget>[
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              "videos/start01.mp4",
            ),
            looping: true,
            title: Text(
              'movie01',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),

          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002100/D0002100031_00000_V_000.mp4",
            ),
          ),
          Text('test2'),
//          ChewieListItem(
//            // This URL doesn't exist - will display an error
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002161/D0002161296_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002161/D0002161251_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002161/D0002161207_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002161/D0002161435_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002161/D0002161144_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002161/D0002161112_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002160/D0002160735_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002161/D0002161067_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002160/D0002160734_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002160/D0002160289_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002160/D0002160168_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002031/D0002031289_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002021/D0002021054_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002100/D0002100016_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002160/D0002160542_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002031/D0002031200_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002021/D0002021130_00000_V_000.mp4",
//            ),
//          ),
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.network(
//              "https://www9.nhk.or.jp/das/movie/D0002021/D0002021020_00000_V_000.mp4",
//            ),
//          ),
        ],
      ),
    );
  }
}

// SearchBar設定　暫定で手動で表記
class DataSearch extends SearchDelegate<String> {
  // ignore: non_constant_identifier_names
  final Movies = [
    "Movie01",
    "Movie02",
    "Movie03",
    "Movie04",
    "Movie05",
    "Movie06",
    "Movie07",
    "Movie08",
    "Movie09",
    "Movie10",
    "Movie11",
    "Movie12",
    "Movie13",
    "Movie14",
    "Movie15",
    "Movie16",
    "Movie17",
    "Movie18",
    "Movie19",
    "Movie20",
  ];
// 10まではassets対応予定
  final recentMovies = [
    "Movie01",
    "Movie02",
    "Movie03",
    "Movie04",
    "Movie05",
    "Movie06",
    "Movie07",
    "Movie08",
    "Movie09",
    "Movie10",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // actions Appbar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: Leading Icon
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // Show some result
    return Center();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Show Search
    final suggestionList = query.isEmpty
        ? recentMovies
        : Movies.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.movie),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.black26),
                )
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
