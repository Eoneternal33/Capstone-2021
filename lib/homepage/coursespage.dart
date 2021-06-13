import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  // const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.cottage),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle, size: 40),
          )
        ],
        centerTitle: true,
        title: Text('Courses'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0, left: 10),
            child: TextButton(
              child: Text(
                'Breakfast',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.green[900],
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => (),
                //   ),
                // );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0,top: 50, left: 10),
            child: TextButton(
              child: Text(
                'Lunch',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.green[900],
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => (),
                //   ),
                // );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 10),
            child: TextButton(
              child: Text(
                'Dinner',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.green[900],
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => (),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
