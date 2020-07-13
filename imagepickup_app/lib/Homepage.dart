import 'package:flutter/material.dart';

import 'bottomNavbar.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomepageState createState() {
    print('1.home : createState()');
    return _HomepageState();
  }
}

class _HomepageState extends State<Homepage> {
  int _counter = 0;

  @override
  void initState() {
    print('1a. home : mounted: $mounted');
    print('2. home : initState()');

    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('3. home : didUpdateWidget');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(Homepage oldWidget) {
    print('5. home : didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void incrementcounter() {
    setState(() {
      print('6. home : setState');
      _counter++;
    });
  }

  @override
  void deactivate() {
    print('7. home : deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('8. home : dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('4. home : build');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera),
            onPressed: () {
              Navigator.pushNamed(context, '/other');
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Homepage test',
            )
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ),
      bottomNavigationBar: bottomNavbar(),
    );
  }
}
