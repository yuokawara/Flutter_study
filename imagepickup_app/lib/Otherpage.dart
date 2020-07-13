//import 'package:flutter/material.dart';
//import 'Homepage.dart';
//import 'bottomNavbar.dart';
//
//class Otherpage extends StatefulWidget {
//  Otherpage({Key key, this.title}) : super(key: key);
//  final String title;
//
//  @override
//  _OtherpageState createState() {
//    print('1.home : createState()');
//    return _OtherpageState();
//  }
//}
//
//class _OtherpageState extends State<Otherpage> {
//  int _counter = 0;
//
//  @override
//  void initState() {
//    print('1a. home : mounted: $mounted');
//    print('2. home : initState()');
//
//    super.initState();
//  }
//
//  @override
//  void didChangeDependencies() {
//    print('3. home : didUpdateWidget');
//    super.didChangeDependencies();
//  }
//
//  @override
//  void didUpdateWidget(Otherpage oldWidget) {
//    print('5. home : didUpdateWidget');
//    super.didUpdateWidget(oldWidget);
//  }
//
//  @override
//  void incrementcounter() {
//    setState(() {
//      print('6. home : setState');
//      _counter++;
//    });
//  }
//
//  @override
//  void deactivate() {
//    print('7. home : deactivate');
//    super.deactivate();
//  }
//
//  @override
//  void dispose() {
//    print('8. home : dispose');
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    print('4. home : build');
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('other test'),
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.home),
//            onPressed: () {
//              Navigator.pushReplacementNamed(context, '/');
//            },
//          )
//        ],
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'Otherpage test',
//            )
//          ],
//        ),
//      ),
////      floatingActionButton: FloatingActionButton(
////        onPressed: _incrementCounter,
////        tooltip: 'Increment',
////        child: Icon(Icons.add),
////      ),
//      bottomNavigationBar: bottomNavbar(),
//    );
//  }
//}
