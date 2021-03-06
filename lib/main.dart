import 'package:flutter/material.dart';
import 'package:meals/modules/categories/data/categories_local_datasource.dart';
import 'package:meals/modules/categories/domain/get_categories_usecase.dart';
import 'package:meals/modules/categories/domain/get_meals_by_category.dart';
import 'package:meals/modules/categories/ui/pages/categories_page.dart';
import 'package:meals/modules/categories/ui/pages/main_page.dart';
import 'package:meals/modules/categories/ui/pages/meal_details_page.dart';
import 'package:meals/modules/categories/ui/pages/meals_page.dart';
import 'package:meals/modules/settings/ui/pages/settings_page.dart';

import 'modules/categories/data/categories_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 20,
              ),
            ),
      ),
      home: MainPage(),
      routes: {
        MealsPage.routeName: (_) => MealsPage(
              getMealsByCategoryUseCase: GetMealsByCategoryUseCase(
                repository: CategoriesRepositoryImpl(
                  datasource: CategoriesLocalDatasourceImpl(),
                ),
              ),
            ),
        MealDetailsPage.routeName: (_) => MealDetailsPage(),
        SettingsPage.routeName: (_) => SettingsPage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (_) => MainPage(),
      ),
    );
  }
}
