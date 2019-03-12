import 'package:flutter/material.dart';
import 'home.dart';
import 'mine/AboutUsPage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(length: tabs.length, child: MainPage()),
      routes: {'about_us': (BuildContext context) => AboutUsPage()},
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  PageController _pageController;
  int _currentPage = 0;
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  void openMenuPage(BuildContext context, String name) {
    Navigator.pushNamed(context, name);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              setState(() {
                _globalKey.currentState.openDrawer();
              });
            }),
        flexibleSpace: Text("main"),
        bottom: TabBar(
            tabs: tabs.map((TabData tabData) {
          return Tab(text: tabData.title, icon: Icon(tabData.icon));
        }).toList()),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on), title: Text("贷款")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("我的")),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Image.network(
                    "https://simg314.magcasa.com/content_images/2016/01/20/222589/1453224609_6632.jpg")),
            ListTile(
              leading: Icon(Icons.feedback, color: Colors.blue),
              title: Text("问题反馈"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.domain, color: Colors.blue),
              title: Text("关于我们"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                openMenuPage(context, "about_us");
              },
            ),
          ],
        ),
      ),
      //Drawer(child: DrawerHeader(child:Image.network("https://simg314.magcasa.com/content_images/2016/01/20/222589/1453224609_6632.jpg"))),
      body: PageView(
        controller: _pageController,
        children: <Widget>[HomePage(), HomePage(), HomePage()],
        onPageChanged: (position) {
          setState(() {
            _currentIndex = position;
          });
        },
      ),
    );
  }
}

class TabData {
  const TabData({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<TabData> tabs = const <TabData>[
  const TabData(title: '社保', icon: Icons.security),
  const TabData(title: '信用卡', icon: Icons.credit_card),
  const TabData(title: '公积金', icon: Icons.account_balance)
];
