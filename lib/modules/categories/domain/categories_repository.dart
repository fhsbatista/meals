import 'package:meals/modules/categories/domain/entities/category.dart';
import 'package:meals/modules/categories/domain/entities/meal.dart';

abstract class CategoriesRepository {
  List<Category> getCategories();
  List<Meal> getMealsByCategory(Category category);
}