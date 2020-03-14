import 'package:flutter/material.dart';

class OverScrollBehavior extends ScrollBehavior{

  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
        return child;
      case TargetPlatform.android:
        return GlowingOverscrollIndicator(
          child: child,
          //不显示头部水波纹
          showLeading: false,
          //不显示尾部水波纹
          showTrailing: false,
          axisDirection: axisDirection,
          color: Theme.of(context).accentColor,
        );
      case TargetPlatform.fuchsia:
        return child;
    }
    return null;
  }

}

// 需配合下面的组件一起使用
//ScrollConfiguration(
//  behavior: OverScrollBehavior(),
//  child: child
//),