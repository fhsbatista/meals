import 'package:flutter/cupertino.dart';
import 'package:meals/modules/categories/domain/entities/meal.dart';

class MealModel extends Meal {
  final String id;
  final List<String> categoriesIds;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Cost cost;

  const MealModel({
    @required this.id,
    @required this.categoriesIds,
    @required this.title,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.complexity,
    @required this.cost,
  }) : super(
          id: id,
          categoriesIds: categoriesIds,
          title: title,
          imageUrl: imageUrl,
          ingredients: ingredients,
          steps: steps,
          duration: duration,
          isGlutenFree: isGlutenFree,
          isLactoseFree: isLactoseFree,
          isVegan: isVegan,
          isVegetarian: isVegetarian,
          complexity: complexity,
          cost: cost,
        );
}
