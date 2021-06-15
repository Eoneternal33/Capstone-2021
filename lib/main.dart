import 'package:capstone/dummy_data.dart';
import 'package:capstone/models/meal.dart';
import 'package:capstone/screens/category_meals_screen.dart';
import 'package:capstone/screens/meal_detail_screen.dart';
import 'package:flutter/material.dart';

import './headerPage/headerPage.dart';
import '../homepage/coursespage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegetarian': false,
    'vegan': false,
  };
  List<Meal> _availableMeals = DUMMY_MEALS;
  List<Meal> _favoriteMeals = [];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableMeals = DUMMY_MEALS.where((meal) {
        //!meal is the equivalent of != but a shortcut version
        if (_filters['gluten'] && !meal.isGlutenFree) {
          return false;
        }
        if (_filters['lactose'] && !meal.isLactoseFree) {
          return false;
        }
        if (_filters['vegetarian'] && !meal.isVegetarian) {
          return false;
        }
        if (_filters['vegan'] && !meal.isVegan) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavorite(String mealId) {
    final existingIndex =
        _favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteMeals.add(
          DUMMY_MEALS.firstWhere((meal) => meal.id == mealId),
        );
      });
    }
  }

bool _isMealFavorite(String id) {
  return _favoriteMeals.any((meal) => meal.id == id);
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Capstone',
      theme: ThemeData(
        primaryColor: Colors.green[900],
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                color: Colors.green[900],
                fontSize: 30,
              ),
            ),
      ),
      // home: new RegisterPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => HeaderPage(),
        CategoryMealsScreen.routeName: (context) =>
        CategoryMealsScreen(_availableMeals),
         MealDetailScreen.routeName: (ctx) => MealDetailScreen(_toggleFavorite, _isMealFavorite),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => Courses(),
        );
      },
    );
  }
}


