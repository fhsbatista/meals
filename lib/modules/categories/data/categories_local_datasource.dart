import 'package:flutter/material.dart';
import 'package:meals/modules/categories/data/models/category_model.dart';

abstract class CategoriesLocalDatasource {
  List<CategoryModel> getCategories();
}

class CategoriesLocalDatasourceImpl extends CategoriesLocalDatasource {
  final dummyCategories = const [
    CategoryModel(
      id: 'd9f',
      title: 'Fitness',
      color: Colors.green,
    ),
    CategoryModel(
      id: '333eef',
      title: 'Hamburgers',
      color: Colors.green,
    ),
    CategoryModel(
      id: 'acd092',
      title: 'Pizzas',
      color: Colors.redAccent,
    ),
    CategoryModel(
      id: '98234ee',
      title: 'Japonesa',
      color: Colors.deepPurple,
    ),
    CategoryModel(
      id: '9234daf,',
      title: 'Brasileira',
      color: Colors.blueGrey,
    ),
    CategoryModel(
      id: '2334sdf',
      title: 'Sobremesas',
      color: Colors.brown,
    ),
  ];

  @override
  List<CategoryModel> getCategories() => dummyCategories;
}
