import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/LoginScreen.dart';
import 'dart:async';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // Debug Mode Banner
    home: LoginScreen(),
  ));
}
