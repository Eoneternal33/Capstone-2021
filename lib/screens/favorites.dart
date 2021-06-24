import 'package:capstone/widgets/mainDrawer.dart';
import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  static const routeName = '/favorites';
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
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
        body: Center(
          child: Text(
            'You have no favorites yet - start adding some!',
          ),
        ),
      );
    } else {
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
        drawer: MainDrawer(),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: favoriteMeals[index].id,
              title: favoriteMeals[index].title,
              author: favoriteMeals[index].author,
              imageUrl: favoriteMeals[index].imageUrl,
              duration: favoriteMeals[index].duration,
              affordability: favoriteMeals[index].affordability,
              complexity: favoriteMeals[index].complexity,
            );
          },
          itemCount: favoriteMeals.length,
        ),
      );
    }
  }
}
