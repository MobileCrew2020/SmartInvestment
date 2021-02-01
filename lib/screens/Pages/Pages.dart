import 'package:flutter/material.dart';
import 'package:smart_investment/Market_Info.dart';
import './MarketInfo.dart';
import './News.dart';
import 'Watchlist.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Watchlist();
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Market_Info();
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return News();
  }
}
