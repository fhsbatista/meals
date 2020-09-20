import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals/modules/categories/domain/entities/category.dart';
import 'package:meals/modules/categories/ui/pages/meals_page.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  void _openCategoryMealsPage(BuildContext context) => Navigator.pushNamed(
        context,
        MealsPage.routeName,
        arguments: category
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openCategoryMealsPage(context),
      borderRadius: BorderRadius.circular(16),
      splashColor: category.color,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
              colors: [category.color.withOpacity(0.3), category.color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            category.title,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
