import 'package:flutter/material.dart';



class VisibilityExample extends StatefulWidget {

  @override

  _VisibilityExampleState createState() {

    return _VisibilityExampleState();

  }

}



class _VisibilityExampleState extends State {

  bool _isVisible = true;



  void showToast() {

    setState(() {

      _isVisible = !_isVisible;

    });

  }



  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'NEWS PAGE',

      home: Scaffold(

          appBar: AppBar(

            title: Text('NEWS PAGE'),

          ),

          body: Padding(

            padding: EdgeInsets.all(15.0),

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                RaisedButton(

                  child: Text('AC/KAPAT B'),

                  onPressed: showToast,

                ),

                Card(

                  child: new ListTile(

                    title: Center(

                      child: new Text('Sağlık Bakanlığı, 80 kelimelik "Koronavirüs Sözlüğü" hazırladı'),

                    ),

                  ),

                ),

                Visibility (

                  visible: _isVisible,

                  child: Card(

                    child: new ListTile(

                      title: Center(

                        child: new Text('Dolar 8 TL’den uzaklaşamıyor'),

                      ),

                    ),

                  ),

                ),

                Card(

                  child: new ListTile(

                    title: Center(

                      child: new Text('Şekerbank sermayesini %60 oranında artırdı'),

                    ),

                  ),

                ),
                Card(

                  child: new ListTile(

                    title: Center(

                      child: new Text(' Bitcoin’in durdurulamaz yükselişine 5 uzman yorumu'),

                    ),

                  ),

                ),
                Card(

                  child: new ListTile(

                    title: Center(

                      child: new Text('Açığa satışçılar borsadan kaçıyo'),

                    ),

                  ),

                ),
                Card(

                  child: new ListTile(

                    title: Center(

                      child: new Text(' BDDKdan normalleşme adımı: Aktif rasyosu kalktı'),

                    ),

                  ),

                ),
                Card(

                  child: new ListTile(

                    title: Center(

                      child: new Text('Hazineden ihaleler öncesi 3,1 milyar TL ROT satış'),

                    ),

                  ),

                ),
                Card(

                  child: new ListTile(

                    title: Center(

                      child: new Text(' Bakır fiyatları, 2014ten beri en yüksek seviyede'),

                    ),

                  ),

                ),



              ],

            ),

          )

      ),

    );

  }

}



void main() => runApp(VisibilityExample());