import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import "package:exam_animation_app/chewie_list_item.dart";

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
//  File imageFile;

//  _openGallary(BuildContext context) async {
//    // ignore: deprecated_member_use
//    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
//    this.setState(() {
//      imageFile = picture;
//    });
//    Navigator.of(context).pop();
//  }

//  _openCamera(BuildContext context) async {
//    // ignore: deprecated_member_use
//    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
//    this.setState(() {
//      imageFile = picture;
//    });
//    Navigator.of(context).pop();
//  }

//  Future<void> _showChoiceDialog(BuildContext context) {
//    return showDialog(
//        context: context,
//        builder: (BuildContext context) {
//          return AlertDialog(
//            title: Text('test Imagepick'),
//            content: SingleChildScrollView(
//              child: ListBody(
//                children: <Widget>[
//                  GestureDetector(
//                    child: Text('Gallary'),
//                    onTap: () {
//                      _openGallary(context);
//                    },
//                  ),
//                  Padding(
//                    padding: EdgeInsets.all(5.0),
//                  ),
////                  GestureDetector(
////                    child: Text('Camera'),
////                    onTap: () {
////                      _openCamera(context);
////                    },
////                  ),
//                ],
//              ),
//            ),
//          );
//        });
//  }

//  Widget _decideImageView() {
//    if (imageFile == null) {
//      Text('Empty');
//    } else {
//      Image.file(
//        imageFile,
//        width: 300,
//        height: 300,
//      );
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test examScreen'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ChewieListItem(
                videoPlayerController: VideoPlayerController.asset(
                  "videos/start01.mp4",
                ),
                looping: true,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Select Image'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
