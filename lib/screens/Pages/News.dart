import 'package:flutter/material.dart';
import './news/constants.dart';
import './news/NewsArticle.dart';
import './news/WebService.dart';

void main() => runApp(News());

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // ignore: deprecated_member_use
  List<NewsArticle> _newsArticles = List<NewsArticle>();

  @override
  void initState() {
    super.initState();
    _populateNewsArticles();
  }

  void _populateNewsArticles() {
    Webservice().load(NewsArticle.all).then((newsArticles) => {
          setState(() => {_newsArticles = newsArticles})
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: _newsArticles.length,
          itemBuilder: (context, position) {
            return Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[200],
                        blurRadius: 4.0,
                        spreadRadius: 3.5,
                        offset: Offset(0.0, 2)),
                  ]),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage(_newsArticles[position].urlToImage),
                  ),
                  XMargin(30),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _newsArticles[position].title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        YMargin(10),
                        Text(_newsArticles[position].descrption)
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
