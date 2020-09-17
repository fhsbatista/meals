import 'package:flutter/foundation.dart' as foundation;
import 'package:meals/core/usecase.dart';
import 'package:meals/modules/categories/domain/entities/category.dart';
import 'package:meals/modules/categories/domain/categories_repository.dart';

class GetCategoriesUseCase extends UseCase {
  final CategoriesRepository repository;

  GetCategoriesUseCase({@foundation.required this.repository});

  List<Category> call() => repository.getCategories();
}