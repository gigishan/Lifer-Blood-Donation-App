import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lifer_app/screens/homepage.dart';
import 'package:lifer_app/screens/requestpage.dart';
import 'package:lifer_app/screens/postpage.dart';
import 'package:lifer_app/screens/locatepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatefulWidget {
  // Create the initialization Future outside of `build`:
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return MaterialApp(
            home: Scaffold(
              body: Center(
                child: Text('Firebase Error Occured'),
              ),
            ),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomePage(),
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

        // Otherwise, show something whilst waiting for initialization to complete
        return MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        );
        ;
      },
    );
  }
}
