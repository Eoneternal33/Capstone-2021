import 'package:capstone/homepage/coursespage.dart';
import 'package:flutter/material.dart';

import '../loginPage/login.dart';
import '../homepage/home.dart';

class RegButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              child: Text('Register',
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
            child: Text('Already a member? Login here!'),
            style: TextButton.styleFrom(
              primary: Colors.green[900],
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
            },
          ),
        ],
      ),
    );
  }
}
