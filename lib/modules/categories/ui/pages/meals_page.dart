import 'package:flutter/material.dart';
import 'package:meals/modules/categories/domain/entities/category.dart';
import 'package:meals/modules/categories/domain/entities/meal.dart';
import 'package:meals/modules/categories/domain/get_meals_by_category.dart';
import 'package:meals/modules/categories/ui/widgets/meal_item.dart';

class MealsPage extends StatefulWidget {
  static const routeName = '/meals';

  final GetMealsByCategoryUseCase getMealsByCategoryUseCase;

  MealsPage({@required this.getMealsByCategoryUseCase});

  @override
  _MealsPageState createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage> {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;

    List<Meal> getMeals() => widget.getMealsByCategoryUseCase(category);

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        backgroundColor: category.color,
      ),
      body: ListView.builder(
        itemCount: getMeals().length,
        itemBuilder: (context, index) => MealItem(meal: getMeals()[index],),
      ),
    );
  }
}
