import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:200),
      child: Text(
        'Welcome to Nana\'s Green Box!',
        style: TextStyle(
          color: Colors.green[900],
            fontFamily: 'PlayFairDisplaySC',
            fontSize: 36,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
