import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:search_movie_test_app/chewie_list_item.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'movie search test';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          leading: Icon(Icons.person),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                  print('start search');
                })
          ],
        ),
        drawer: Drawer(),
        body: MyStatelessWidget(),
      ),
    );
  }
}

// 検索class
class DataSearch extends SearchDelegate<String> {
  final titles = [
    'movie01',
    'movie02',
    'movie03',
    'movie04',
    'movie05',
    'movie06',
    'movie07',
    'movie08',
    'movie09',
    'movie10',
  ];

  final recentTitles = [
    'movie01',
    'movie02',
    'movie03',
    'movie04',
    'movie05',
  ];
  // 検索対象リストをここに設置する
//  final titles = [CustomListItem];
//  final recentTitles = [CustomListItem];

  @override
  List<Widget> buildActions(BuildContext context) {
    // implement buildActions 右側
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];

//    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    // implement buildLeading　左側
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
//    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // implement buildResults 検索の結果を表示
//    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // implement buildSuggestions 検索した時表示
    final suggestionList = query.isEmpty ? recentTitles : titles;

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.movie),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
//    throw UnimplementedError();
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    this.thumbnail,
    this.title,
    this.user,
    this.viewCount,
  });

  final Widget thumbnail;
  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: thumbnail,
          ),
          Expanded(
            flex: 3,
            child: _VideoDescription(
              title: title,
              user: user,
              viewCount: viewCount,
            ),
          ),
          const Icon(
            Icons.more_vert,
            size: 16.0,
          ),
        ],
      ),
    );
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    Key key,
    this.title,
    this.user,
    this.viewCount,
  }) : super(key: key);

  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            '$viewCount views',
            style: const TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      itemExtent: 106.0,
      // 動画20個設置
      children: <CustomListItem>[
        CustomListItem(
          user: 'Okawara',
          thumbnail: Container(
            width: 100,
            height: 100,
            //サムネイルの場所に videoを設置
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/start01.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie01',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/movie02.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie02',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/movie03.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie03',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "https://www9.nhk.or.jp/das/movie/D0002011/D0002011046_00000_V_000.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie04',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/start01.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie05',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/movie02.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie06',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/movie03.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie07',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/movie02.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie08',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/movie03.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie09',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/start01.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie10',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/movie02.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie11',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/movie03.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie12',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/start01.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie13',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/movie02.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie14',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/movie03.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie15',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/movie02.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie16',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/movie03.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie17',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/start01.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie18',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/movie03.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie19',
        ),
        CustomListItem(
          user: 'Yu',
          thumbnail: Container(
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/movie02.mp4",
              ),
              looping: true,
            ),
          ),
          title: 'movie20',
        ),
      ],
    );
  }
}
