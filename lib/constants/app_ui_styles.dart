import 'package:flutter/material.dart';
import 'package:fuodz/constants/app_strings.dart';
import 'package:supercharged/supercharged.dart';

class AppUIStyles extends AppStrings {
  //
  static int themeUIStyle() {
    dynamic uiEnv = AppStrings.env("ui");
    if (uiEnv == null ||
        uiEnv["home"] == null ||
        uiEnv['home']["homeViewStyle"] == null) {
      return 1;
    }
    return (uiEnv['home']["homeViewStyle"].toString().toInt()) ?? 1;
  }

  static bool get isModern => themeUIStyle() == 2;
  static bool get isOriginal => [1, null].contains(themeUIStyle());

//   vendortypeHeight
// vendortypeWidth
// vendortypeImageStyle

  //vendor type sizes
  static double get vendorTypeWidth {
    dynamic uiEnv = AppStrings.env("ui");
    if (uiEnv == null ||
        uiEnv["home"] == null ||
        uiEnv['home']["vendortypeWidth"] == null) {
      return double.infinity;
    }
    return (uiEnv['home']["vendortypeWidth"].toString().toDouble()) ??
        double.infinity;
  }

  static double get vendorTypeHeight {
    dynamic uiEnv = AppStrings.env("ui");
    if (uiEnv == null ||
        uiEnv["home"] == null ||
        uiEnv['home']["vendortypeHeight"] == null) {
      return 60;
    }
    return (uiEnv['home']["vendortypeHeight"].toString().toDouble()) ?? 60;
  }

  static BoxFit get vendorTypeImageStyle {
    dynamic uiEnv = AppStrings.env("ui");
    if (uiEnv == null ||
        uiEnv["home"] == null ||
        uiEnv['home']["vendortypeImageStyle"] == null) {
      return BoxFit.cover;
    }

    //
    switch (uiEnv['home']["vendortypeImageStyle"].toString()) {
      case "center":
        return BoxFit.contain;
        break;
      case "contain":
        return BoxFit.contain;
        break;
      case "cover":
        return BoxFit.cover;
        break;
      case "fill":
        return BoxFit.fill;
        break;
      case "none":
        return BoxFit.none;
        break;
      case "scaleDown":
        return BoxFit.scaleDown;
        break;
      default:
        return BoxFit.cover;
    }
  }
}
