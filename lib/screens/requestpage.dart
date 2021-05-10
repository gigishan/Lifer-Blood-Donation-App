import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifer_app/common.dart';
import 'package:lifer_app/models/bloodRequest.dart';
import 'package:lifer_app/services/databaseService.dart';

class RequestPage extends StatefulWidget {
  final String id;
  RequestPage({this.id});
  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  BloodRequest bloodRequest;

  @override
  void initState() {
    bloodRequest = BloodRequest();
    if (widget.id != null)
      DatabaseService().getBloodRequest(widget.id).then((value) {
        value.nic = null;
        setState(() {
          bloodRequest = value;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: widget.id != null && bloodRequest.name == null
          ? Center(
              child: SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(),
              ),
            )
          : Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20.0),
                    Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.fromLTRB(120.0, 0.0, 120.0, 0.0),
                      child: Image(
                          image: AssetImage('assets/images/blood_request.png')),
                    ),
                    Row(
                      children: [
                        SizedBox(height: 95.0),
                        Container(
                          margin: EdgeInsets.only(left: 30.0),
                          child: Text(
                            'Blood Group :',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 16.0),
                          ),
                        ),
                        Container(
                          height: 35.0,
                          margin: EdgeInsets.only(left: 15.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            child: DropdownButton<String>(
                              value: bloodRequest.group,
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
                                  bloodRequest.group = newValue;
                                });
                              },
                              items: <String>[
                                'A+',
                                'A-',
                                'B+',
                                'B-',
                                'O+',
                                'O-',
                                'AB+',
                                'AB-'
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
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 30.0,
                          ),
                          child: Text(
                            'City                 :',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 16.0),
                          ),
                        ),
                        Container(
                          height: 35.0,
                          margin: EdgeInsets.only(
                            left: 15.0,
                          ),
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            child: DropdownButton<String>(
                              value: bloodRequest.city,
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
                                  bloodRequest.city = newValue;
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
                    SizedBox(height: 5.0),
                    Container(
                      margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                      child: TextFormField(
                        onChanged: (value) => bloodRequest.nic = value,
                        decoration: InputDecoration(
                          labelText: 'NIC',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                      child: TextFormField(
                        initialValue: bloodRequest.hospitalName,
                        onChanged: (value) => bloodRequest.hospitalName = value,
                        decoration: InputDecoration(
                          labelText: 'Hospital Name',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                      child: TextFormField(
                        initialValue: bloodRequest.name,
                        onChanged: (value) => bloodRequest.name = value,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                      child: TextFormField(
                        initialValue: bloodRequest.contactNumber,
                        onChanged: (value) =>
                            bloodRequest.contactNumber = value,
                        decoration: InputDecoration(
                          labelText: 'Contact Number',
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
                      margin: EdgeInsets.only(top: 20.0, bottom: 20.00),
                      height: 40.0,
                      width: 150.0,
                      child: GestureDetector(
                        onTap: () async {
                          FocusScope.of(context).unfocus();
                          if (!bloodRequest.validateAll())
                            return showContentDialog(
                                context, 'FIELDS CANNOT BE EMPTY');
                          showLoading(context);
                          var res;
                          if (widget.id == null)
                            res = await DatabaseService()
                                .requestBoold(bloodRequest);
                          else
                            res = await DatabaseService()
                                .editRequestBoold(bloodRequest, widget.id);

                          Navigator.pop(context);
                          if (res) if (widget.id == null)
                            showContentDialog(
                                context, 'REQUEST ADDED SUCCESSFULLY',
                                action: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            });
                          else
                            showContentDialog(
                                context, 'REQUEST EDITED SUCCESSFULLY',
                                action: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            });
                          else if (widget.id == null)
                            showContentDialog(context, 'REQUEST FAILED');
                          else
                            showContentDialog(
                                context, 'NIC MISMATCH, CANNOT EDIT REQUEST');
                        },
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.red,
                          child: Center(
                            child: Text(
                              widget.id == null ? 'REQUEST' : 'EDIT REQUEST',
                              style: TextStyle(
                                  fontSize: 19.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
