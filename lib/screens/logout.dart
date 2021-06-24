import 'package:capstone/headerPage/headerPage.dart';
import 'package:capstone/widgets/mainDrawer.dart';
import 'package:flutter/material.dart';

class LogOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Nana\'s Green Box',
          style: TextStyle(
            fontFamily: 'Galada',
            fontSize: 26,
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/good_box.jpg',
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.4), BlendMode.dstATop)
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 470, left: 10, right: 10),
            child: Text(
              'Hello! Before you go, if you have a recipe you\'d like added, message Eli at Eburgess.nexstep@gmail.com',
              style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left:35, top: 400),
            child: ElevatedButton(
              autofocus: true,
              child: Text('Logout',
              style: TextStyle(
                color: Colors.black
              ) ,
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(320, 46),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
                textStyle: TextStyle(
                  fontSize: 20,
                ),
                primary: Colors.greenAccent[200],
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HeaderPage(),
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
