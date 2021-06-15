import 'package:flutter/material.dart';

class RegInput extends StatefulWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return RegInputState();
  }
}

class RegInputState extends State<RegInput> {
   String nameInput;
   String emailInput;
   String passInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
     
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Name', border: OutlineInputBorder()),
              onChanged: (val) {
                nameInput = val;
              },
            ),
          ),
          Container(
             margin: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              onChanged: (val) {
                passInput = val;
              },
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            onChanged: (val) {
              passInput = val;
            },
          ),
        ],
      ),
    );
  }
}
