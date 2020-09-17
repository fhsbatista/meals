import 'package:flutter/material.dart';
import 'package:meals/modules/categories/data/categories_local_datasource.dart';
import 'package:meals/modules/categories/domain/get_categories_usecase.dart';
import 'package:meals/modules/categories/ui/pages/categories_page.dart';

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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: ThemeData.light().textTheme.copyWith(
          headline6: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      home: CategoriesPage(
        getCategoriesUseCase: GetCategoriesUseCase(
          repository: CategoriesRepositoryImpl(
            datasource: CategoriesLocalDatasourceImpl(),
          ),
        ),
      ),
    );
  }
}
