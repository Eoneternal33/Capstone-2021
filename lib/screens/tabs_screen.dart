import 'package:capstone/widgets/mainDrawer.dart';
import 'package:flutter/material.dart';

import '../homepage/coursespage.dart';
import '../screens/favorites.dart';
import '../models/meal.dart';



class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  TabsScreen(this.favoriteMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
   List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
     _pages = [
    {
      'page': Courses(),
      'title': 'Categories',
    },
    {
      'page': FavoritesScreen(widget.favoriteMeals),
      'title': 'Favorites',
    },
  ];
    super.initState();
  }
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.red,

        currentIndex: _selectedPageIndex,
        //default set to fixed instead of shifting, shifting provides an animation to the newly selected icon
        // type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
