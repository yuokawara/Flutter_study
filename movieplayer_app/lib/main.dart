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
//      routes: <String, WidgetBuilder>{
//        '/home': (BuildContext context) => new MyHomePage(),
//        '/subpage': (BuildContext context) => new SubPage()
//      },
    );
  }
}

//class SubPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Navigator'),
//      ),
//      body: new Container(
//        padding: new EdgeInsets.all(32.0),
//        child: new Center(
//          child: new Column(
//            children: <Widget>[
//              Text('sub'),
//              RaisedButton(
//                onPressed: () => Navigator.of(context).pop(),
//                child: new Text('back'),
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

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
//              setState(() {
//                if (this.cusIcon.icon == Icons.search) {
//                  this.cusIcon = Icon(Icons.cancel);
//                  this.cusSearchBar = TextField();
//                }
//              });
            },
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_add),
          ),
        ],

//        bottom: PreferredSize(
//          preferredSize: Size(50, 50),
//          child: Container(),
//        ),

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
          ),
          Text("start01"),

          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              "https://www9.nhk.or.jp/das/movie/D0002100/D0002100031_00000_V_000.mp4",
            ),
          ),
          Text("test02"),
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

class DataSearch extends SearchDelegate<String> {
  final Movies = [
    "Start01",
    "test02",
  ];

  final recentMovies = [
    "Start01",
    "test02",
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
    return Center(
      child: Container(
        width: 100,
        height: 100,
        child: Card(
          color: Colors.deepOrange,
          child: Center(
            child: Text(query),
          ),
        ),
      ),
    );
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
