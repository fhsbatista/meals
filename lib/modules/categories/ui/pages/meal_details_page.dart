import 'package:flutter/material.dart';
import 'package:meals/modules/categories/domain/entities/meal.dart';

class MealDetailsPage extends StatefulWidget {
  static const routeName = '/meal-details';
  @override
  _MealDetailsPageState createState() => _MealDetailsPageState();
}

class _MealDetailsPageState extends State<MealDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Center(
        child: Text(meal.title),
      ),
    );
  }
}
