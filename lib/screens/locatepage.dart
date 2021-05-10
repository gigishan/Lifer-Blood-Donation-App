import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifer_app/models/bloodRequest.dart';
import 'package:lifer_app/models/campaign.dart';
import 'package:lifer_app/services/databaseService.dart';

import 'postpage.dart';
import 'requestpage.dart';

class LocatePage extends StatefulWidget {
  LocatePage({Key key}) : super(key: key);

  @override
  _LocatePageState createState() => _LocatePageState();
}

String cityDropdownValue = 'Anuradhapura';

class _LocatePageState extends State<LocatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'LOCATE',
          style: TextStyle(fontSize: 18.0, color: Colors.white70),
        ),
        backgroundColor: Colors.red[400],
        elevation: 0.0,
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
      body: Container(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                contentPadding: EdgeInsets.symmetric(horizontal: 64),
                height: 75.0,
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
                    text: "CAMPS",
                  ),
                  // Tab(
                  //   text: "HOSPITALS",
                  // ),
                  // Tab(
                  //   text: "BANKS",
                  // ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Center(child: BloodRequestCard()),
                    Center(child: CampaignCard()),
                    // Center(child: Cards()),
                    // Center(child: Cards()),
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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
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

class CampaignCard extends StatefulWidget {
  @override
  _CampaignCardState createState() => _CampaignCardState();
}

class _CampaignCardState extends State<CampaignCard> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Campaign>>(
        stream: DatabaseService().getAllCampaigns,
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(),
              ),
            );
          List<Campaign> list = snapshot.data;
          list.retainWhere((element) => element.city == cityDropdownValue);
          return Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15.0, top: 20.0),
                      child: Text(
                        'SELECT CITY :',
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 15.0),
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
                Expanded(
                  child: ListView(
                      children: list
                          .map(
                            (e) => Card(
                              elevation: 5,
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin:
                                        EdgeInsets.only(left: 10.0, top: 10.0),
                                    alignment: Alignment.topLeft,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: IconButton(
                                          alignment: Alignment.topRight,
                                          iconSize: 20,
                                          icon: Icon(Icons.edit),
                                          onPressed: () =>
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          PostPage(
                                                    id: e.id,
                                                  ),
                                                ),
                                              )),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 10.0, top: 10.0),
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          '${e.name}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[600],
                                              fontSize: 16.0),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 10.0, top: 10.0),
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          '${e.location}',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 16.0),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 10.0,
                                            top: 10.0,
                                            bottom: 10.0),
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          '${e.contactPersonName} : ${e.contactPersonNumber} ',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 16.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList()),
                ),
              ],
            ),
          );
        });
  }
}

class BloodRequestCard extends StatefulWidget {
  @override
  _BloodRequestCardState createState() => _BloodRequestCardState();
}

class _BloodRequestCardState extends State<BloodRequestCard> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<BloodRequest>>(
        stream: DatabaseService().getAllBloodRequests,
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(),
              ),
            );
          List<BloodRequest> list = snapshot.data;
          list.retainWhere((element) => element.city == cityDropdownValue);
          return Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15.0, top: 20.0),
                      child: Text(
                        'SELECT CITY :',
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 15.0),
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
                Expanded(
                  child: ListView(
                      children: list
                          .map(
                            (e) => Card(
                              elevation: 5,
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin:
                                        EdgeInsets.only(left: 10.0, top: 10.0),
                                    alignment: Alignment.topLeft,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: IconButton(
                                          alignment: Alignment.topRight,
                                          iconSize: 20,
                                          icon: Icon(Icons.edit),
                                          onPressed: () =>
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          RequestPage(
                                                    id: e.id,
                                                  ),
                                                ),
                                              )),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 10.0, top: 10.0),
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          '${e.name}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[600],
                                              fontSize: 16.0),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 10.0, top: 10.0),
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Blood Group : ${e.group}',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 16.0),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 10.0, top: 10.0),
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Hospital : ${e.hospitalName}',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 16.0),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 10.0,
                                            top: 10.0,
                                            bottom: 10.0),
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          '${e.contactNumber}',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 16.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList()),
                ),
              ],
            ),
          );
        });
  }
}
