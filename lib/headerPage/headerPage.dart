import 'package:flutter/material.dart';

import '../headerPage/buttons.dart';
import '../headerPage/header.dart';

class HeaderPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Nana\'s Green Box'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Header(),
          Buttons(),
          Image(
            image: AssetImage('assets/greenBox.png'),
          ),
        ],
      ),
    );;
  }
}