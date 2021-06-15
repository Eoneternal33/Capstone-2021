import 'package:flutter/material.dart';

import '../loginPage/login.dart';
import '../register/register.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: Text('Register'),
              style: ElevatedButton.styleFrom(
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
            ElevatedButton(
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
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
      ),
    );
  }
}
