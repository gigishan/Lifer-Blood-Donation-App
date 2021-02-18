import 'package:flutter/material.dart';
import 'package:lifer_app/screens/homepage.dart';
import 'package:lifer_app/screens/loginpage.dart';
import 'package:lifer_app/screens/settingspage.dart';
import 'package:lifer_app/screens/registerpage.dart';
import 'package:lifer_app/screens/requestpage.dart';
import 'package:lifer_app/screens/postpage.dart';
import 'package:lifer_app/screens/navigatepage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigatePage(),
    );
  }
}
