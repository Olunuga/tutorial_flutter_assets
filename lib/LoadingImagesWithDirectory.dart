import 'package:flutter/material.dart';

class LoadingImagesWithDirectory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Loading Image With directory")),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: ExactAssetImage("images/load/cube.jpg")),
              Image(image: ExactAssetImage("images/load/pots.jpg"))
            ],
          ),
        ),
      ),
    );
  }

}