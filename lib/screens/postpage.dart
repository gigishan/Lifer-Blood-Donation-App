import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifer_app/common.dart';
import 'package:lifer_app/models/campaign.dart';
import 'package:lifer_app/services/databaseService.dart';

class PostPage extends StatefulWidget {
  final String id;
  PostPage({this.id});
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  Campaign campaign;

  @override
  void initState() {
    campaign = Campaign();
    if (widget.id != null)
      DatabaseService().getCampaign(widget.id).then((value) {
        value.nic = null;
        setState(() {
          campaign = value;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'POST CAMPAIGN',
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
      body: widget.id != null && campaign.name == null
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
                      margin: EdgeInsets.fromLTRB(140.0, 0.0, 130.0, 0.0),
                      child: Image(image: AssetImage('assets/images/camp.png')),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                      child: TextFormField(
                        initialValue: campaign.name,
                        onChanged: (val) => campaign.name = val,
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
                        SizedBox(height: 10.0),
                        Container(
                          margin: EdgeInsets.only(left: 30.0),
                          child: Text(
                            'City                 :',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 16.0),
                          ),
                        ),
                        SizedBox(height: 70.0),
                        Container(
                          height: 35.0,
                          margin: EdgeInsets.only(left: 15.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            child: DropdownButton<String>(
                              value: campaign.city,
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
                                  campaign.city = newValue;
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
                        initialValue: campaign.location,
                        onChanged: (val) => campaign.location = val,
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
                    SizedBox(height: 5.0),
                    Container(
                      margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                      child: TextFormField(
                        onChanged: (val) => campaign.nic = val,
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
                        initialValue: campaign.contactPersonName,
                        onChanged: (val) => campaign.contactPersonName = val,
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
                    SizedBox(height: 5.0),
                    Container(
                      margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                      child: TextFormField(
                        initialValue: campaign.contactPersonNumber,
                        onChanged: (val) => campaign.contactPersonNumber = val,
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
                      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                      height: 40.0,
                      width: 150.0,
                      child: GestureDetector(
                        onTap: () async {
                          FocusScope.of(context).unfocus();
                          if (!campaign.validateAll())
                            return showContentDialog(
                                context, 'FIELDS CANNOT BE EMPTY');
                          showLoading(context);
                          var res;
                          if (widget.id == null)
                            res =
                                await DatabaseService().postCampaign(campaign);
                          else
                            res = await DatabaseService()
                                .editPostCampaign(campaign, widget.id);

                          Navigator.pop(context);
                          if (res) if (widget.id == null)
                            showContentDialog(
                                context, 'CAMPAIGN ADDED SUCCESSFULLY',
                                action: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            });
                          else
                            showContentDialog(
                                context, 'CAMPAIGN EDITED SUCCESSFULLY',
                                action: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            });
                          else if (widget.id == null)
                            showContentDialog(context, 'POST CAMPAIGN FAILED');
                          else
                            showContentDialog(
                                context, 'NIC MISMATCH, CANNOT EDIT CAMPAIGN');
                        },
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.red,
                          child: Center(
                            child: Text(
                              widget.id == null ? 'POST' : 'EDIT POST',
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
