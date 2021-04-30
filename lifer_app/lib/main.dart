import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lifer_app/screens/homepage.dart';
import 'package:lifer_app/screens/loginpage.dart';
import 'package:lifer_app/screens/settingspage.dart';
import 'package:lifer_app/screens/registerpage.dart';
import 'package:lifer_app/screens/requestpage.dart';
import 'package:lifer_app/screens/postpage.dart';
import 'package:lifer_app/screens/locatepage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostPage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => HomePage(),
      //   '/request': (context) => RequestPage(),
      //   '/post': (context) => PostPage(),
      //   '/locate': (context) => LocatePage(),
      //   '/settings': (context) => SettingsPage(),
      //   '/login': (context) => LoginPage(),
      //   '/register': (context) => RegisterPage(),
      // },
    );
  }
}
