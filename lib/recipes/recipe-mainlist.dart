import 'package:flutter/material.dart';

class RecipeList extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  RecipeList(this.categoryId, this.categoryTitle);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipeis'),
      ),
      body: Center(
        child: Text(
          'Category of recipes',
        ),
      ),
    );
  }
}
