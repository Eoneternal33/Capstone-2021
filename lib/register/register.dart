import 'package:flutter/material.dart';

import './regButtons.dart';
import './regfields.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Nana\'s Green Box'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please Register with an Name, Email and Password',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            RegInput(),
            RegButtons(),
          ],
        ),
      ),
    );
  }
}
