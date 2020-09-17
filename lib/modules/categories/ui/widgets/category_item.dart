import 'package:flutter/material.dart';
import 'package:meals/modules/categories/domain/entities/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
