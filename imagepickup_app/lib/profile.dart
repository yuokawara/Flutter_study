//import 'package:circles/widgets/IconText.dart';
//import 'package:circles/widgets/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  Map<String, dynamic> _user = {};
  File _image;

  void _onSaveProfile() {
    print('User: $_user');

    http.post('https://us-central1-circle-fc687.cloudfunctions.net/setUser',
        body: _user);
  }

  Future _getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
      print('_image: $_image');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Profile'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              _onSaveProfile();
            },
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Icon(Icons.camera),
                  Divider(),
                  GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: <Widget>[
                      GestureDetector(
                        onTap: _getImage,
                        child: Container(
                            color: Colors.black12,
                            child: _image == null
                                ? Icon(FontAwesomeIcons.plus)
                                : Image.file(_image)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
