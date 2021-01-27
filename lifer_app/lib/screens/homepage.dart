import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.red[400],
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.fromLTRB(80.0, 20.0, 80.0, 10.0),
              child: Image(image: AssetImage('assets/images/lifer_logo.png')),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Lifer. Gigishan',
                      style: TextStyle(fontSize: 23.0),
                    ),
                  ),
                  Container(
                    width: 48.0,
                    height: 48.0,
                    margin: EdgeInsets.only(right: 10.0, top: 20.0),
                    child: IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.fromLTRB(40.0, 20.0, 80.0, 10.0),
                  child: InkWell(
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset('assets/images/blood_request.png',
                          width: 120.0, height: 120.0),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 10.0),
                  child: InkWell(
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset('assets/images/blood_nearby.png',
                          width: 100.0, height: 100.0),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.fromLTRB(40.0, 50.0, 50.0, 10.0),
                  child: InkWell(
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset('assets/images/post_camp.png',
                          width: 130.0, height: 130.0),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.fromLTRB(10.0, 50.0, 30.0, 10.0),
                  child: InkWell(
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset('assets/images/history.png',
                          width: 110.0, height: 110.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
