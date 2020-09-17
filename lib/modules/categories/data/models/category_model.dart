import 'package:flutter/cupertino.dart';
import 'package:meals/modules/categories/domain/entities/category.dart';

class CategoryModel extends Category {
  final String id;
  final String title;
  final Color color;

  const CategoryModel({
    @required this.id,
    @required this.title,
    this.color,
  }) : super(
          id: id,
          title: title,
          color: color,
        );
}
