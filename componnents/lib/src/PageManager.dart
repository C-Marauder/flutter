import 'package:flutter/material.dart';

class PageManager {
  // 工厂模式
  factory PageManager() => _getInstance();

  static PageManager get instance => _getInstance();
  static PageManager _instance;

  PageManager._internal() {
    // 初始化
  }

  static PageManager _getInstance() {
    if (_instance == null) {
      _instance = new PageManager._internal();
    }
    return _instance;
  }

   Color titleColor = Colors.white;
  double titleSize = 16.0;
  double elevation = 4.0;
}
