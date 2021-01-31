import 'package:flutter/material.dart';

class LoadingImagesNormal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Loading Image Normal")),
      body: Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: ExactAssetImage("images/happy.jpg")),
            Image(image: ExactAssetImage("images/laptop.jpg"))
          ],
        ),
      ),
      ),
    );
  }

}