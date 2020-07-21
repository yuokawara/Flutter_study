import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:okawara_search_test/style/theme.dart' as Style;
import 'package:okawara_search_test/widget/now_playing.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// MainScreen
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.secondColor,
        centerTitle: true,
        leading: Icon(
          EvaIcons.menu2Outline,
          color: Colors.white,
        ),
        title: Text('SearchTest App'),
        actions: <Widget>[
          IconButton(
              icon: (Icon(
                EvaIcons.searchOutline,
                color: Colors.white,
              )),
              onPressed: () {
                print('push Search');
              })
        ],
      ),
      body: ListView(
        children: <Widget>[
          NowPlaying(),
        ],
      ),
    );
  }
}
