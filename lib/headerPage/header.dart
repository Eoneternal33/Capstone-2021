import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 150),
      child: Text(
        'Welcome to Nana\'s Green Box!',
        style: TextStyle(
          color: Colors.greenAccent[400],
            fontStyle: FontStyle.italic,
            fontSize: 36,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
