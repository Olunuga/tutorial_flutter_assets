
import 'package:flutter/material.dart';

class LoadingImagesResolutionAware extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Loading Image Normal")),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage("images/card/masterCard.png"),)
            ],
          ),
        ),
      ),
    );
  }

}