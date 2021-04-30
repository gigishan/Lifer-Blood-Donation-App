import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
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
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(130.0, 0.0, 130.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200.0),
                  child: Image(
                      image: AssetImage('assets/images/user_default.png')),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(225.0, 100.0, 20.0, 0.0),
                child: IconButton(
                  color: Colors.grey,
                  iconSize: 22.0,
                  icon: Icon(Icons.camera_alt_outlined),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Text(
              'Lifer. Gigishan',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'First Name',
                hintText: 'Gigishan',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Last Name',
                hintText: 'Karunarathne',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'gigishan@gmail.com',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Contact Number',
                hintText: '0712345678',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              obscureText: true,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              obscureText: true,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            height: 40.0,
            width: 130.0,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.red,
              child: GestureDetector(
                onTap: () {},
                child: Center(
                  child: Text(
                    'SAVE',
                    style: TextStyle(fontSize: 19.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
