import 'package:flutter/material.dart';
import 'package:meals/modules/categories/domain/entities/meal.dart';

class MealDetailsPage extends StatefulWidget {
  static const routeName = '/meal-details';
  @override
  _MealDetailsPageState createState() => _MealDetailsPageState();
}

class _MealDetailsPageState extends State<MealDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            _SectionTitle(title: 'Ingredientes'),
            _SectionContent(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 10),
                itemCount: meal.ingredients.length,
                itemBuilder: (context, index) => Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(meal.ingredients[index]),
                    )),
              ),
            ),
            _SectionTitle(title: 'Passos'),
            _SectionContent(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 10),
                itemCount: meal.steps.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    child: Text('${index + 1}'),
                  ),
                  title: Text(meal.steps[index]),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () => Navigator.pop(context, meal),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  _SectionTitle({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}

class _SectionContent extends StatelessWidget {
  final Widget child;

  _SectionContent({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.all(10),
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: child,
    );
  }
}
