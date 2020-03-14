import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Contacts();
  }
}

class _Contacts extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: new Text("Contacts页面，待处理中..."),
      ),
    );
  }
}