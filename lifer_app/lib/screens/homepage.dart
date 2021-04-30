import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            color: Colors.grey,
            icon: Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 190,
              width: 190,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.fromLTRB(80.0, 20.0, 80.0, 0.0),
              child: Image(image: AssetImage('assets/images/lifer_logo.png')),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 30.0,
                    ),
                    child: Text(
                      'Lifer. Gigishan',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.0, right: 60.0),
                    width: 48.0,
                    height: 48.0,
                    child: IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        Navigator.pushNamed(context, '/settings');
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40.0),
              height: 70.0,
              width: 200.0,
              child: Material(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.red[400],
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/request');
                  },
                  child: Center(
                    child: Text(
                      'BLOOD REQUEST',
                      style: TextStyle(fontSize: 19.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              height: 70.0,
              width: 200.0,
              child: Material(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.red[400],
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/locate');
                  },
                  child: Center(
                    child: Text(
                      'LOCATE',
                      style: TextStyle(fontSize: 19.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              height: 70.0,
              width: 200.0,
              child: Material(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.red[400],
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/post');
                  },
                  child: Center(
                    child: Text(
                      'POST CAMPAIGN',
                      style: TextStyle(fontSize: 19.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
