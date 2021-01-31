import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoadingStaticFiles extends StatefulWidget {
  @override
  _LoadingStaticFilesState createState() => _LoadingStaticFilesState();
}

class _LoadingStaticFilesState extends State<LoadingStaticFiles> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Loading string"),),
      body: FutureBuilder(
        future: rootBundle.loadString("json/Settings.json"),
        builder: (context, snapshot){

          return snapshot.hasData ? Text(snapshot.data) : Text("loading");
        },
      ),
    );
  }




}