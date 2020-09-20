import 'package:flutter/material.dart';
import 'package:meals/modules/categories/domain/entities/category.dart';
import 'package:meals/modules/categories/domain/get_categories_usecase.dart';
import 'package:meals/modules/categories/ui/widgets/category_item.dart';

class CategoriesPage extends StatelessWidget {
  final GetCategoriesUseCase getCategoriesUseCase;

  CategoriesPage({@required this.getCategoriesUseCase});

  List<Category> _getCategories() => getCategoriesUseCase();

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: _getCategories().map((e) => CategoryItem(e)).toList(),
    );
  }
}
