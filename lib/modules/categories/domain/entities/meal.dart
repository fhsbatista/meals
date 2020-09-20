import 'package:flutter/foundation.dart';

enum Complexity { SIMPLE, MEDIUM, HARD }
enum Cost { CHEAP, FAIR, EXPENSIVE }

extension ComplexityValues on Complexity {
  String get description {
    switch (this) {
      case Complexity.SIMPLE:
        {
          return 'Simples';
        }
      case Complexity.MEDIUM:
        {
          return 'Razoável';
        }
      case Complexity.HARD:
        {
          return 'Difícil';
        }
      default:
        {
          return 'Desconhecido';
        }
    }
  }
}

extension CostValues on Cost {
  String get description {
    switch (this) {
      case Cost.CHEAP:
        {
          return 'Barato';
        }
      case Cost.FAIR:
        {
          return 'Justo';
        }
      case Cost.EXPENSIVE:
        {
          return 'Caro';
        }
      default:
        {
          return 'Desconhecido';
        }
    }
  }
}


class Meal {
  final String id;
  final List<String> categoriesIds;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Cost cost;

  const Meal({
    @required this.id,
    @required this.categoriesIds,
    @required this.title,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.complexity,
    @required this.cost,
  });
}
