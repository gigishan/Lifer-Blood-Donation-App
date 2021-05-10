import 'package:flutter/material.dart';

showContentDialog(BuildContext context, String content,
    {void Function() action}) {
  showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          title: Center(child: Text("Notice", style: TextStyle())),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                  child: Text(content,
                      textAlign: TextAlign.center, style: TextStyle())),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: action == null
                    ? () {
                        Navigator.pop(context);
                      }
                    : action,
                child: Container(
                  margin: EdgeInsets.only(top: 20.0, bottom: 20.00),
                  height: 40.0,
                  width: 130.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Ok',
                        style: TextStyle(fontSize: 19.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      });
}

showLoading(BuildContext context) {
  showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () => Future.value(false),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            title: Center(
              child: Text(
                'Please Wait',
              ),
            ),
            content: SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(),
            ),
          ),
        );
      });
}
