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
              alignment: Alignment.topCenter,
              margin: EdgeInsets.fromLTRB(80.0, 20.0, 80.0, 0.0),
              child: Image(image: AssetImage('assets/images/lifer_logo.png')),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Lifer. Gigishan',
                      style: TextStyle(fontSize: 21.0),
                    ),
                  ),
                  Container(
                    width: 48.0,
                    height: 48.0,
                    margin: EdgeInsets.only(right: 10.0, top: 30.0),
                    child: IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0),
              height: 70.0,
              width: 220.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.red[400],
                child: GestureDetector(
                  onTap: () {},
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
              width: 220.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.red[400],
                child: GestureDetector(
                  onTap: () {},
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
              width: 220.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.red[400],
                child: GestureDetector(
                  onTap: () {},
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
