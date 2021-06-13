import 'package:flutter/material.dart';

class FavRecipes {
  late String title;
  late String author;
  final DateTime date;

  FavRecipes({
    required this.title,
    required this.author,
    required this.date,
  });
}
