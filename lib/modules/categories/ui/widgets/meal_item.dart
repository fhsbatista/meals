import 'package:flutter/material.dart';
import 'package:meals/modules/categories/domain/entities/meal.dart';
import 'package:meals/modules/categories/ui/pages/meal_details_page.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  MealItem({@required this.meal});

  void _openMealDetailsPage(BuildContext context) => Navigator.pushNamed(
        context,
        MealDetailsPage.routeName,
        arguments: meal,
      ).then((meal) => {
        if (meal != null) {
          print((meal as Meal).title)
        }
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () => _openMealDetailsPage(context),
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    meal.imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    color: Colors.black54,
                    width: 300,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      meal.title,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 6),
                      Text('${meal.duration} min')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 6),
                      Text(meal.complexity.description)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 6),
                      Text(meal.cost.description)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
