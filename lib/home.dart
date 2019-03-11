
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }

}

class _HomePageState extends State<HomePage>{
  int _currentTab =0;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TabBarView(children:[
        Column(children: <Widget>[
          Icon(Icons.security),
          Text("社保")
        ],)

      ])
    ],);
  }

}
class TabData {
  const TabData({this.title,this.icon});

  final String title;
  final IconData icon;
}
const List<TabData> tabs = const <TabData>[
  const TabData(title: '社保', icon: Icons.security),
  const TabData(title: '信用卡', icon: Icons.credit_card),
  const TabData(title: '公积金', icon: Icons.account_balance)

];