import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_weixin/model/model.dart';
import 'package:flutter_weixin/style/styleColors.dart';
import 'package:flutter_weixin/utils/myBehavior.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }
}

class _Home extends State<Home> {

  List<Contact> _contacts = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: StyleColors.B_White,
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: new Column(
          children: <Widget>[
            new Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.07,
              margin: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: new Row(
                children: <Widget>[
                  new Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    padding: new EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05),
                    alignment: Alignment.centerLeft,
                    child: new Text("微信(" + _contacts.length.toString() + ")", style: TextStyle(color: Colors.black, fontSize: ScreenUtil().setSp(36)),),
                  ),
                  new Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    padding: new EdgeInsets.only(right: MediaQuery.of(context).size.width*0.025),
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new InkWell(
                          onTap: (){},
                          borderRadius: BorderRadius.circular(100.0),
                          child: new Padding(
                            padding: new EdgeInsets.all(MediaQuery.of(context).size.width*0.025),
                            child: new Icon(Icons.search, size: ScreenUtil().setSp(48), color:StyleColors.B_Black,),
                          ),
                        ),
                        new InkWell(
                          onTap: (){},
                          borderRadius: BorderRadius.circular(100.0),
                          child: new Padding(
                            padding: new EdgeInsets.all(MediaQuery.of(context).size.width*0.025),
                            child: new Icon(Icons.add_circle_outline, size: ScreenUtil().setSp(48), color:StyleColors.B_Black,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.93 - MediaQuery.of(context).padding.top - 56,
              child: ScrollConfiguration(
                behavior: OverScrollBehavior(),
                child: new Column(
                  children: <Widget>[],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}