import 'package:flutter/material.dart';

class MarketInfo extends StatelessWidget {
  // This widget is the root of your application.
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
  final company = [
    'Tüpraş',
    'Türk Hava Yolları',
    'Petrol Ofisi',
    'Opet Petrolcülük',
    'BİM',
    'Ford Otosan',
    'Ahlatıcı Kuyumculuk',
    'Shell&Turcas Petrol',
    'Türk Telekom',
    'Arçelik',
    'Turkcell',
    'Enka İnşaat',
    'Ereğli Demir Çelik',
    'EnerjiSA',
    'Doğuş Otomotiv',
    'Anadolu Efes',
    'TOFAŞ'
  ];
  // ignore: deprecated_member_use
  var items = List<String>();

  @override
  void initState() {
    items.addAll(company);
    super.initState();
  }

  void filterSearchResults(String query) {
    // ignore: deprecated_member_use
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(company);
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
        items.addAll(company);
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
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${items[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
