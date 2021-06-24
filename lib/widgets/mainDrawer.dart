import 'package:capstone/homepage/coursespage.dart';
import 'package:capstone/screens/about.dart';

import '../screens/favorites.dart';
import 'package:capstone/screens/filters_screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColor,
            child: Text(
              'Additionals',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            'A history',
            Icons.cottage,
            () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AboutPage(),
                ),
              );
            },
          ),
          buildListTile(
            'Favorites',
            Icons.favorite,
            () {
              Navigator.of(context)
                  .pushNamed(FavoritesScreen.routeName);
            },
          ),
          buildListTile(
            'Filters',
            Icons.filter_5,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(FilterScreen.routeName);
            },
          ),
          buildListTile('Home', Icons.home, () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => Courses(),
            ));
          })
        ],
      ),
    );
  }
}
