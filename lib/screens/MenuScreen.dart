import 'pages/Pages.dart';
import 'package:flutter/material.dart';

void main() => runApp(MenuScreen());

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuScreenPage(),
    );
  }
}

class MenuScreenPage extends StatefulWidget {
  MenuScreenPage({key}) : super(key: key);

  @override
  _MenuScreenPageState createState() => _MenuScreenPageState();
}

class _MenuScreenPageState extends State<MenuScreenPage> {
  int _selectedItem = 0;
  var _pages = [FirstPage(), SecondPage(), ThirdPage()];
  var _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _selectedItem = index;
          });
        },
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(Icons.reorder),
              // ignore: deprecated_member_use
              title: Text('Watchlist')),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(Icons.list_alt_rounded),
              // ignore: deprecated_member_use
              title: Text('Market Info')),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(Icons.language),
              // ignore: deprecated_member_use
              title: Text('News'))
        ],
        currentIndex: _selectedItem,
        onTap: (index) {
          setState(() {
            _selectedItem = index;
            _pageController.animateToPage(_selectedItem,
                duration: Duration(milliseconds: 200), curve: Curves.linear);
          });
        },
      ),
    );
  }
}
