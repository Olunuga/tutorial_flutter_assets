import 'package:flutter/material.dart';
import 'package:tutorial_flutter_assets_yt/LoadingIcon.dart';
import 'package:tutorial_flutter_assets_yt/LoadingIconFlutterIcon.dart';
import 'package:tutorial_flutter_assets_yt/LoadingImageResolutionAware.dart';
import 'package:tutorial_flutter_assets_yt/LoadingImagesWithDirectory.dart';

import 'LoadingImagesNormal.dart';
import 'LoadingStaticFiles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final List<Map<String, dynamic>> pages = [
    {"name": "Loading Static Files", "path": LoadingStaticFiles()},
    {"name": "Loading Images (normal)", "path": LoadingImagesNormal()},
    {
      "name": "Loading Images (Directory)",
      "path": LoadingImagesWithDirectory()
    },
    {
      "name": "Loading Images (ResolutionAware)",
      "path": LoadingImagesResolutionAware()
    },
    {"name": "Loading Icons", "path": LoadingIcon()},
    {"name": "Loading Icons (FlutterIcon)", "path": LoadingIconFlutterIcon()}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
              pages.length,
              (index) => RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => pages[index]["path"]));
                  },
                  child: Text(pages[index]["name"]))),
        ),
      ),
    );
  }
}
