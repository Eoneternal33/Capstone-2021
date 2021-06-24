import 'package:flutter/material.dart';

import '../headerPage/buttons.dart';
import '../headerPage/header.dart';

class HeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text('Welcome to Nana\'s Green Box!'),
      // ),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/good_box.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(child: Header(),),
          
          Center(child: Buttons()),
          // Image(
          //   image: AssetImage('assets/greenBox.png'),
          // ),
        ],
      ),
    );
    ;
  }
}
