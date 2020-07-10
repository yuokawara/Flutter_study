import 'dart:convert';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_app/list_data.dart';
import 'package:video_app/video_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState create() => _MainScreenState();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  ScrollController _scrollController = ScrollController();

  List<ListData> _listData;

  _getData() async {
    _listData = List<ListData>();
    String loaddata = await rootBundle.loadString('asset/dart.json');
    final jsonResponse = json.decode(loaddata);
    print(jsonResponse['data'].length);

    for (int i = 0; i < jsonResponse['data'].length; i++) {
      _listData.add(ListData(
          jsonResponse['data'][i]['title'],
          jsonResponse['data'][i]['video'],
          jsonResponse['data'][i]['thumnail'],
          jsonResponse['data'][i]['description']));
    }
    setState(() {});
  }

// init
  @override
  void initState() {
    _getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.black12,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Builder(
          builder: (BuildContext context) {
            return ListView.builder(
              controller: _scrollController,
              itemCount: _listData == null ? 0 : _listData.length,
              itemBuilder: (BuildContext context, int index) {
                return OpenContainer(
                  openColor: Colors.tealAccent,
                  closedColor: Colors.teal,
                  openElevation: 0.0,
                  closedElevation: 0.0,
                  transitionType: ContainerTransitionType.fadeThrough,
                  openBuilder: (BuildContext context, VoidCallback _) =>
                      VideoScreen(listData: _listData[index]),
                  closedBuilder: (BuildContext _, VoidCallback openContainer) {
                    return InkWell(
                      onTap: () => openContainer(),
                      child: Stack(
                        children: <Widget>[
                          Image.asset('assets/${_listData[index].thumnail}'),
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              gradient: LinearGradient(
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.center,
                                colors: const [
                                  Color.fromARGB(51, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0.0,
                            left: 16.0,
                            child: Text(
                              _listData[index].title,
                              style: TextStyle(
                                  fontFamily: 'D-DIN',
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -5.0,
                                  shadows: [
                                    Shadow(
                                      color: Color.fromARGB(128, 0, 0, 0),
                                      offset: const Offset(0, 2.0),
                                      blurRadius: 0.0,
                                    )
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
