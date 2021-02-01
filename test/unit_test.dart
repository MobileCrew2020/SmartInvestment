import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Some random services as an example

class AuthService {
  Stream<bool> get isLoggedIn =>
      // ignore: deprecated_member_use
      FirebaseAuth.instance.onAuthStateChanged.map((u) => u != null);
}

class PopularHashtagService {
  Stream<List<String>> get popular => FirebaseDatabase.instance
      .reference()
      .child("/hashtags")
      .onValue
      .map((v) => v.snapshot.value.keys);
}

class LikesService {
  Stream<int> likes(String id) => FirebaseDatabase.instance
      .reference()
      .child("/likes/$id")
      .onValue
      .map((v) => v.snapshot.value);
}

class Services implements LoginScreenServices {
  final auth = AuthService();
  final tags = PopularHashtagService();
  final likes = LikesService();
}

/*
 * Login Screen defines a small subsection of services
 */

abstract class LoginScreenServices {
  AuthService get auth;
  PopularHashtagService get tags;
}

/*
 * Which are easy to fake for a specific test
 */
class FakeLoginScreenServices
    implements LoginScreenServices, AuthService, PopularHashtagService {
  @override
  Stream<bool> get isLoggedIn => Stream.fromIterable([true]);

  @override
  Stream<List<String>> get popular => Stream.fromIterable([
        ["flutter", "dart", "foo", "bar"]
      ]);

  @override
  AuthService get auth => this;

  @override
  PopularHashtagService get tags => this;
}

/*
 * And login screen doesn't know the difference
 */
class LoginScreen extends StatelessWidget {
  LoginScreen(this.services);

  final LoginScreenServices services;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: services.auth.isLoggedIn,
      builder: (context, snap) {
        /// Loading
        if (snap.hasData == false)
          return Center(
            child: CircularProgressIndicator(),
          );

        /// Logged out
        if (snap.data == false)
          return Center(
            child: Text("You gotta login!"),
          );

        /// Logged in
        else
          return Column(
            children: <Widget>[
              Text("Welcome! Here are some popular tags."),
              StreamBuilder<List<String>>(
                stream: services.tags.popular,
                builder: (context, snap) {
                  /// Loading
                  if (snap.hasData == false) return Text("Loading tags...");

                  /// No tags
                  if (snap.data.isEmpty)
                    return Text("Nothing is popular right now!");

                  /// Got tags
                  else
                    return Row(
                      children: <Widget>[
                        // ignore: sdk_version_ui_as_code
                        ...snap.data.map((tag) => Text(tag)),
                      ],
                    );
                },
              )
            ],
          );
      },
    );
  }
}
