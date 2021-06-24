import 'package:flutter/material.dart';

import '../loginPage/login.dart';
import '../register/register.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              autofocus: true,
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(320, 46),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
                textStyle: TextStyle(fontSize: 20),
                primary: Colors.green[400],
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
          ),
          Container(
            margin: EdgeInsets.only(bottom: 90, top: 10),
            child: TextButton(
              child: Text(
                'Register',
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  )
                ),
                side: MaterialStateProperty.all(
                  BorderSide(width: 2, color: Colors.green),
                ),
                
                foregroundColor: MaterialStateProperty.all(Colors.green),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                ),
                textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 20),
                ),
                // minimumSize: Size(320, 46),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(80),
                // ),
                // textStyle: TextStyle(fontSize: 20),
                // primary: Colors.green,
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
          ),
        ],
      ),
    );
  }
}
