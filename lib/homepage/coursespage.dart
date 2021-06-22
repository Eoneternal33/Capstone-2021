import 'package:capstone/models/meal.dart';
import 'package:capstone/screens/category_meals_screen.dart';
import 'package:flutter/material.dart';

import 'package:capstone/widgets/category_item.dart';
import '../dummy_data.dart';

class Courses extends StatefulWidget {
  // const Courses({Key? key}) : super(key: key);
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> with TickerProviderStateMixin {
  TabController _tabController;
  int _currentIndex = 0;

  List<Meal> _availableMeals = DUMMY_MEALS;

  get id => null;

  List<Meal> get availableMeals => DUMMY_MEALS;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: DUMMY_CATEGORIES.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
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
        title: Text('Nana\'s Green Box'),
       bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: DUMMY_CATEGORIES
              .map(
                (catData) => Tab(text: catData.title)
                //  CategoryItem(
                //   catData.id,
                //   catData.title,
                // ),
              )
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: DUMMY_CATEGORIES.map((catData) {
          List<Meal> displayedMeals = availableMeals.where((meal) {
            return meal.categories.contains(catData.id);
          }).toList();
          return CategoryMealsScreen(displayedMeals);
        }).toList(),
        
      ),
    );
  }
}
