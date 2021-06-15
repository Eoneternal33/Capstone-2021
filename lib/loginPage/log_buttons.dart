import 'package:flutter/material.dart';

import '../register/register.dart';
import '../homepage/home.dart';

class LogButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            child: Text('Login'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green[900],
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
          ),
          TextButton(
            child: Text('Not a member? Register here!'),
            style: TextButton.styleFrom(
              primary: Colors.green[900],
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Register(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}