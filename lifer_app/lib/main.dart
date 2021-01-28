import 'package:flutter/material.dart';
import 'package:lifer_app/screens/homepage.dart';
import 'package:lifer_app/screens/loginpage.dart';
import 'package:lifer_app/screens/settingspage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingsPage(),
    );
  }
}
