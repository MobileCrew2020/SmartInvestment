import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:smart_investment/Market_Info.dart';
import 'package:smart_investment/controllers/auth/database.dart';

class Watchlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Watchlist();
  }
}

class _Watchlist extends StatefulWidget {
  @override
  __WatchlistState createState() => __WatchlistState();
}

class __WatchlistState extends State<_Watchlist> {
  Widget build(BuildContext context) {
    return DB();
  }
}
