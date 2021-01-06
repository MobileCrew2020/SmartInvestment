import 'package:flutter/material.dart';
import './MarketInfo.dart';
import './News.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '   _WATCHLIST PAGE_\n\n   Favorite Markets will be shown here.',
          style: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MarketInfo();
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return News();
  }
}
