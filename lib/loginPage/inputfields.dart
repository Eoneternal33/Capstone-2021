import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return InputState();
  }
}

class InputState extends State<Input> {
  late String emailInput;
  late String passInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
              onChanged: (val) {
                emailInput = val;
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
