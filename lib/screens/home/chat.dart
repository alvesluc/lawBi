import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF00506B),
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          width: double.infinity,
          child: RaisedButton(
            elevation: 5.0,
            onPressed: () {},
            padding: EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(
            ),
            color: Colors.white,
            child: Text(
              'INDISPONÍVEL NO MOMENTO',
              style: TextStyle(
                color: Color(0xFF527DAA),
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'BrandonText_Medium',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
