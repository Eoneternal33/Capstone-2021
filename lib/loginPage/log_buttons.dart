import 'package:capstone/homepage/coursespage.dart';
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
            child: Text('Login',
            style: TextStyle(
              color: Colors.black,
            ),),
            style: ElevatedButton.styleFrom(
              primary: Colors.greenAccent[200],
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Courses(),
                ),
              );
            },
          ),
          TextButton(
            child: Text('Not a member? Register here!'),
            style: TextButton.styleFrom(
              primary: Colors.green,
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