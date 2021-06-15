import 'package:flutter/material.dart';

import '../favorites/favorites.dart';
import './coursespage.dart';

class Home extends StatelessWidget {
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
          title: Text('Nana\'s Green Box'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 10),
              child: TextButton(
                child: Text(
                  'Favorites',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.green[900],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Favorites(),
                    ),
                  );
                },
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 45.0, left: 10),
            //   child: TextButton(
            //     child: Text(
            //       'All Recipes',
            //       style: TextStyle(
            //         fontSize: 30,
            //       ),
            //     ),
            //     style: TextButton.styleFrom(
            //       primary: Colors.green[900],
            //     ),
            //     onPressed: () {},
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 45.0, left: 10),
              child: TextButton(
                child: Text(
                  'My Recipes',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.green[900],
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45.0, left: 10),
              child: TextButton(
                child: Text(
                  'Courses',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.green[900],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Courses(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45.0, left: 10),
              child: TextButton(
                child: Text(
                  'Create New Recipe',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.green[900],
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45.0, left: 10),
              child: TextButton(
                child: Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.green[900],
                ),
                onPressed: () {},
              ),
            ),
          ],
        ));
  }
}
