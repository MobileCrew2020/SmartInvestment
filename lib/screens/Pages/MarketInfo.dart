import 'package:flutter/material.dart';
import 'package:smart_investment/StockInfo/StockInfo.dart';

class MarketInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MARKET INFO',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MarketInfoPage(title: 'MARKET INFO'),
    );
  }
}

class MarketInfoPage extends StatefulWidget {
  MarketInfoPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MarketInfoPageState createState() => new _MarketInfoPageState();
}

class _MarketInfoPageState extends State<MarketInfoPage> {
  TextEditingController editingController = TextEditingController();

  final _saved = Set();

  List company = [
    {
      'title': 'AKBNK',
      'name': 'AKBANK',
      'status': 'false',
    },
    {
      'title': 'BIMAS',
      'name': 'BIM ANONİM ŞİRKETİ ',
      'status': 'false',
    },
    {
      'title': 'CIMSA',
      'name': 'ASADSD',
      'status': 'false',
    },
    {
      'title': 'DOGAN HOLDING',
      'name': 'ASD',
      'status': 'false',
    },
  ];

  final price = [12, 33, 44, 55, 0];

  // ignore: deprecated_member_use
  var items = List<String>();

  @override
  void initState() {
    //items.addAll(company);
    items = List.from(company);
    super.initState();
  }

  void filterSearchResults(String query) {
    // ignore: deprecated_member_use
    List<String> dummySearchList = List<String>();
    // dummySearchList.addAll(company);
    dummySearchList = List.from(company);
    if (query.isNotEmpty) {
      // ignore: deprecated_member_use
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items = List.from(company);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Company search",
                    hintText: "Company name",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                //itemCount: stocks.length,
                itemBuilder: (context, index) {
                  final alreadySaved = _saved.contains(items[index]);

                  return ListTile(
                    title: Text('${items[index]}'),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StockInfo()),
                    ),
                    trailing: Column(
                      children: <Widget>[
                        Text("143.00 \₺",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 22,
                                fontWeight: FontWeight.w500)),
                        (1 == 0)
                            ? Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.red),
                                width: 75,
                                height: 25,
                                child: Text("-1.09%",
                                    style: TextStyle(color: Colors.white)))
                            : Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.green),
                                width: 75,
                                height: 25,
                                child: Text("-1.09%",
                                    style: TextStyle(color: Colors.white))),
                      ],
                    ),
                    leading: IconButton(
                      icon: alreadySaved
                          ? Icon(Icons.star)
                          : Icon(Icons.star_border),
                      color: alreadySaved ? Colors.red : null,
                      onPressed: () {
                        setState(() {
                          if (alreadySaved) {
                            _saved.remove(items[index]);
                          } else {
                            _saved.add(items[index]);
                          }
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (BuildContext context) {
        final tiles = _saved.map(
          (market) {
            return ListTile(
              title: Text(market['title']),
              subtitle: Text(market['name']),
              trailing: Column(
                children: <Widget>[
                  Text("345.00 \₺",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.red),
                      width: 70,
                      height: 20,
                      child:
                          Text("-1.09%", style: TextStyle(color: Colors.white)))
                ],
              ),
            );
          },
        );

        final divided = ListTile.divideTiles(
          context: context,
          tiles: tiles,
        ).toList();
//-------------------------------------------------
        return Scaffold(
            appBar: AppBar(
              title: Text('Watchlist'),
            ),
            body: ListView(children: divided));
      }),
    );
  }
}
