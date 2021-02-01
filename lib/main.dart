import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_investment/controllers/auth/database.dart';
import 'package:smart_investment/screens/MenuScreen.dart';
import 'dart:async';
import 'screens/LoginScreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // Debug Mode Banner
    //home: MenuScreen(),
    home: LoginScreen(),
  ));
}
