import 'package:flutter/material.dart';
import 'package:ui1/BottomNavigationBar/Explore1.dart';
import 'package:ui1/BottomNavigationBar/content.dart';
import 'package:ui1/BottomNavigationBar/profile..dart';
//import 'package:ui1/BottomNavigationBar/bar.dart';
//import 'package:ui1/BottomNavigationBar/HomeSearch.dart';

void main() {
  runApp(Compile());
}

class Compile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        primaryColorLight: Colors.blueAccent[100],
        accentColor: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedPage = 0;
  final _pageOptions = [
    Content(),
    ProfilePage(),
    LandscapePage(),
  ];
  Icon searchBtn = new Icon(Icons.search);
  Widget appBarTitle = new Text('Home');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                'Content',
                style: TextStyle(
                  color: Colors.black,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
                color: Colors.black,
              ),
              title: Text('Explore',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 12.0,
                backgroundImage: AssetImage('assets/minnie-star.png'),
              ),
              title: Text('Profile',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
        ],
      ),
    );
  }
}
