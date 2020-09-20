import 'package:flutter/foundation.dart' as foundation;
import 'package:meals/core/usecase.dart';
import 'package:meals/modules/categories/domain/entities/category.dart';
import 'package:meals/modules/categories/domain/categories_repository.dart';
import 'package:meals/modules/categories/domain/entities/meal.dart';

class GetMealsByCategoryUseCase extends UseCase {
  final CategoriesRepository repository;

  GetMealsByCategoryUseCase({@foundation.required this.repository});

  List<Meal> call(Category category) => repository.getMealsByCategory(category);
}
