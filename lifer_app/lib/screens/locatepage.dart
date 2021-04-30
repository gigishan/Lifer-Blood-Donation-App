import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocatePage extends StatefulWidget {
  LocatePage({Key key}) : super(key: key);

  @override
  _LocatePageState createState() => _LocatePageState();
}

class _LocatePageState extends State<LocatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          color: Colors.grey,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
      body: Container(
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                backgroundColor: Colors.red,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                tabs: [
                  Tab(
                    text: "REQUESTS",
                  ),
                  Tab(
                    text: "HOSPITALS",
                  ),
                  Tab(
                    text: "BANKS",
                  ),
                  Tab(
                    text: "CAMPS",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Center(child: Cards()),
                    Center(child: Cards()),
                    Center(child: Cards()),
                    Center(child: Cards()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  String cityDropdownValue = 'Anuradhapura';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 20.0),
                height: 30.0,
                width: 118.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.red,
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'MY LOCATION',
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0, top: 20.0),
                child: Text(
                  'SELECT CITY :',
                  style: TextStyle(color: Colors.grey[600], fontSize: 15.0),
                ),
              ),
              Container(
                height: 35.0,
                margin: EdgeInsets.only(left: 5.0, top: 20.0),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  child: DropdownButton<String>(
                    value: cityDropdownValue,
                    icon: Icon(Icons.arrow_drop_down_outlined),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.black),
                    underline: Container(
                      height: 1.0,
                      color: Colors.grey,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        cityDropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'Anuradhapura',
                      'Colombo',
                      'Gampaha',
                      'Kurunegala',
                      'Jaffna',
                      'Galle',
                      'Kandy',
                      'Matara'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 115,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Piliyandala City Hospital',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                          fontSize: 16.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'High level road, Piliyandala',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      '0112123456',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 115,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Piliyandala City Hospital',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                          fontSize: 16.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'High level road, Piliyandala',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      '0112123456',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 115,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Piliyandala City Hospital',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                          fontSize: 16.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'High level road, Piliyandala',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      '0112123456',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 115,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Piliyandala City Hospital',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                          fontSize: 16.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'High level road, Piliyandala',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      '0112123456',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
