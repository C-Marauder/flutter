import 'package:flutter/material.dart';
import 'PageManager.dart';
//class FlutterPage extends StatefulWidget{
//
//  FlutterPage({this.mTitle,this.mTitleColor}):super();
//  String mTitle = "";
//  Color mTitleColor = Colors.white;
//  @override
//  State<StatefulWidget> createState() {
//    return _FlutterPageState(mTitle:mTitle);
//  }
//
//}

class _FlutterPageState<T extends StatefulWidget> extends State<T>{
  _FlutterPageState(this.body,{this.mTitle,this.mTitleColor}):super();
  Color mTitleColor = Colors.white;
  String mTitle = "";
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
        Navigator.canPop(context);
      }),centerTitle: true, title: Text(mTitle,style: TextStyle(color: PageManager.instance.titleColor)),elevation: PageManager.instance.elevation,),
      body: this.body,
    );
  }

}
