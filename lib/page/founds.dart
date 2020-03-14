import 'package:flutter/material.dart';

class Founds extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Founds();
  }
}

class _Founds extends State<Founds> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: new Text("Founds页面，待处理中..."),
      ),
    );
  }
}