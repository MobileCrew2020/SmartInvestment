import 'package:flutter/material.dart';

class XMargin extends StatelessWidget {
  final double x;
  const XMargin(this.x);
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: x);
  }
}

class YMargin extends StatelessWidget {
  final double y;
  const YMargin(this.y);
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: y);
  }
}

double screenHeight(BuildContext context, {double percent = 1}) =>
    MediaQuery.of(context).size.height * percent;

double screenWidth(BuildContext context, {double percent = 1}) =>
    MediaQuery.of(context).size.width * percent;

final blue = Color(0xffdee8ff);

final red = Color(0xffff795b);

class Constants {
  // ignore: non_constant_identifier_names
  static final String HEADLINE_NEWS_URL =
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=75a41eef631a4460999c101849caf95c';
}

// BITCOIN-NEWS  'https://newsapi.org/v2/everything?q=bitcoin&apiKey=75a41eef631a4460999c101849caf95c';

// TR-NEWS https://newsapi.org/v2/top-headlines?country=tr&apiKey=75a41eef631a4460999c101849caf95c

// TR-business-NEWS
// https://newsapi.org/v2/top-headlines?country=tr&apiKey=75a41eef631a4460999c101849caf95c
