import 'package:flutter/material.dart';
import 'package:flutter_weixin/page/contacts.dart';
import 'package:flutter_weixin/page/founds.dart';
import 'package:flutter_weixin/page/home.dart';
import 'package:flutter_weixin/page/mine.dart';
import 'package:flutter_weixin/style/styleColors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomArchitecture extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomArchitecture();
  }
}


class _BottomArchitecture extends State<BottomArchitecture> {
  int currentItem = 0;
  StatefulWidget _currentPage;
  List<StatefulWidget> _pageList = [
    new Home(),
    new Contacts(),
    new Founds(),
    new Mine(),
  ];

  @override
  void initState() {
    _currentPage = _pageList[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);
    // TODO: implement build
    return  new Scaffold(
      body: _currentPage,
      bottomNavigationBar: new BottomNavigationBar(
        backgroundColor: StyleColors.B_White,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: new Icon(Icons.message, color: StyleColors.B_Black54, size: ScreenUtil().setSp(48),),
              activeIcon: new Icon(Icons.message, color: StyleColors.B_Green, size: ScreenUtil().setSp(48),),
              title: new Text("微信", style: TextStyle(color: StyleColors.B_Black54, fontSize: ScreenUtil().setSp(24), fontWeight: FontWeight.w100),)
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.contacts, color: StyleColors.B_Black54, size: ScreenUtil().setSp(48),),
              activeIcon: new Icon(Icons.contacts, color: StyleColors.B_Green, size: ScreenUtil().setSp(48),),
              title: new Text("通讯录", style: TextStyle(color: StyleColors.B_Black54, fontSize: ScreenUtil().setSp(24), fontWeight: FontWeight.w100),)
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.room, color: StyleColors.B_Black54, size: ScreenUtil().setSp(48),),
              activeIcon: new Icon(Icons.room, color: StyleColors.B_Green, size: ScreenUtil().setSp(48),),
              title: new Text("发现", style: TextStyle(color: StyleColors.B_Black54, fontSize: ScreenUtil().setSp(24), fontWeight: FontWeight.w100),)
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.perm_identity, color: StyleColors.B_Black54, size: ScreenUtil().setSp(48),),
              activeIcon: new Icon(Icons.perm_identity, color: StyleColors.B_Green, size: ScreenUtil().setSp(48),),
              title: new Text("我的", style: TextStyle(color: StyleColors.B_Black54, fontSize: ScreenUtil().setSp(24), fontWeight: FontWeight.w100),)
          ),
        ],
        currentIndex: currentItem,
        showUnselectedLabels:true,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        elevation: 7.0,
        onTap: (index){
         setState(() {
           currentItem = index;
           _currentPage = _pageList[index];
         });
        },
      ),
    );
  }

}