import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  String cityDropdownValue = 'Anuradhapura';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          color: Colors.grey,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.fromLTRB(140.0, 0.0, 130.0, 0.0),
              child: Image(image: AssetImage('assets/images/post_camp.png')),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Campaign Name',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30.0, top: 30.0),
                  child: Text(
                    'City                 :',
                    style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
                  ),
                ),
                Container(
                  height: 35.0,
                  margin: EdgeInsets.only(left: 15.0, top: 30.0),
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
              margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Location',
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
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Contact Person Name',
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
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Contact Person Number',
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
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Contact Number 2 (optional)',
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
              margin: EdgeInsets.only(top: 30.0),
              height: 40.0,
              width: 130.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.red,
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'POST',
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
