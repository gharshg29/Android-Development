import 'package:flutter/material.dart';

class Newsletter extends StatefulWidget {
  @override
  _NewsletterState createState() => _NewsletterState();
}

class _NewsletterState extends State<Newsletter> {
  @override
  // ignore: override_on_non_overriding_member
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Color.fromRGBO(47, 141, 70, 1),
      child: Container(
        height: 300,
        child: Card(
          elevation: 18.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(58.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.8),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Join Our Newsletter",
                    style: TextStyle(
                      color: Color.fromRGBO(47, 141, 70, 1),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Be one of the first to be notified when\nwe have an update...",
                    style: TextStyle(
                      color: Color.fromRGBO(47, 141, 70, 1),
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12),
                  Form(
                    key: _formKey,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Enter your email',
                            ),
                            validator: (String value) {
                              String pattern =
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                              RegExp regExp = new RegExp(pattern);
                              if (value.length == 0) {
                                return "Email is Required";
                              } else if (!regExp.hasMatch(value)) {
                                return "Invalid Email";
                              } else {
                                return null;
                              }
                            }),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Center(
                            child: RaisedButton(
                              color: Color.fromRGBO(47, 141, 70, 1),
                              onPressed: () {
                                if (_formKey.currentState.validate()) {}
                              },
                              child: Text(
                                'Subscribe',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
