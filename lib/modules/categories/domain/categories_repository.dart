import 'package:meals/modules/categories/domain/entities/category.dart';

abstract class CategoriesRepository {
  List<Category> getCategories();
}