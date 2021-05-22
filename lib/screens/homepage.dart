import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'locatepage.dart';
import 'postpage.dart';
import 'requestpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'LIFEr',
            style: TextStyle(fontSize: 18.0, color: Colors.white70),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red[400],
          elevation: 0.0,
        ),
        body: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Container(
                height: 190,
                width: 190,
                alignment: Alignment.topCenter,
                child: Image(image: AssetImage('assets/images/lifer_logo.png')),
              ),
              SizedBox(
                height: 60.0,
              ),
              Container(
                height: 70.0,
                width: 200.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => RequestPage()));
                  },
                  child: Material(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.red[400],
                    child: Center(
                      child: Text(
                        'BLOOD REQUEST',
                        style: TextStyle(fontSize: 19.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 70.0,
                width: 200.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => LocatePage()));
                  },
                  child: Material(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.red[400],
                    child: Center(
                      child: Text(
                        'LOCATE',
                        style: TextStyle(fontSize: 19.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 70.0,
                width: 200.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => PostPage()));
                  },
                  child: Material(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.red[400],
                    child: Center(
                      child: Text(
                        'POST CAMPAIGN',
                        style: TextStyle(fontSize: 19.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              Container(
                child: Text('liferapplk@gmail.com',
                    style: TextStyle(fontSize: 12.0, color: Colors.black54)),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                child: Text('Developed & Maintained by GiGiSHANSOFT',
                    style: TextStyle(fontSize: 10.0, color: Colors.black54)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
