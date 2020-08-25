import 'package:flutter/material.dart';

import './layout_screen.dart';
import '../widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    LayoutScreen(),
    PlaceHolder(),
    PlaceHolder(),
    PlaceHolder(),
    PlaceHolder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: Center(
          child: Text('Layout Builder'),
        ),
        backgroundColor: Colors.orange,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.info_outline,
              size: 28,
            ),
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Layout'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hourglass_empty),
            title: Text('BaseLine'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hot_tub),
            title: Text('Stack'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            title: Text('Expanded'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.indeterminate_check_box),
            title: Text('Padding'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
