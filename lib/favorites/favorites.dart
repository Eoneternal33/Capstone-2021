import 'package:flutter/material.dart';

import './favClass.dart';

class Favorites extends StatefulWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FavoritesState();
  }
}

class FavoritesState extends State<Favorites> {
  List<FavRecipes> favorites = [
    FavRecipes(
      title: 'Chicken Parm',
      author: 'Dirty Dan',
      date: DateTime.now(),
    ),
    FavRecipes(
      title: 'Menudo',
      author: 'Chica Pollo',
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text('Nana\'s Favorites'),
      ),
      body: Column(
        // children: favorites.map(
          // (rp) {},
        ),
      );
  }
}
