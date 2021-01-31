import 'package:flutter/material.dart';
import 'package:tutorial_flutter_assets_yt/custom_icon_icons.dart';

class LoadingIcon extends StatefulWidget {
  @override
  _LoadingIconState createState() => _LoadingIconState();
}

class _LoadingIconState extends State<LoadingIcon> {
  var currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Loading Icon")),
      body : Text("Content would show here"),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            currentPage = index;
          });
        },
        currentIndex: currentPage,
        items: [
          BottomNavigationBarItem(icon: Icon(CustomIcon.cloud_done), label: "Cloud"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("images/icon/dumbel.png")), label: "List"),
        ],
      ),
    );
  }
}