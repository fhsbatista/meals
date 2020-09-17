import 'package:flutter/foundation.dart' as foundation;
import 'package:meals/modules/categories/data/categories_local_datasource.dart';
import 'package:meals/modules/categories/domain/categories_repository.dart';
import 'package:meals/modules/categories/domain/entities/category.dart';

class CategoriesRepositoryImpl extends CategoriesRepository {
  final CategoriesLocalDatasource datasource;

  CategoriesRepositoryImpl({@foundation.required this.datasource});

  @override
  List<Category> getCategories() => datasource.getCategories();

}