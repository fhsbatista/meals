import 'package:flutter/material.dart';
import 'package:meals/modules/categories/data/categories_local_datasource.dart';
import 'package:meals/modules/categories/data/categories_repository.dart';
import 'package:meals/modules/categories/domain/get_categories_usecase.dart';
import 'package:meals/modules/categories/ui/pages/categories_page.dart';
import 'package:meals/modules/categories/ui/pages/favorite_meals_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Map<String, dynamic>> _pages = [
    {
      'title': 'Categorias',
      'page': CategoriesPage(
        getCategoriesUseCase: GetCategoriesUseCase(
          repository: CategoriesRepositoryImpl(
            datasource: CategoriesLocalDatasourceImpl(),
          ),
        ),
      ),
    },
    {
      'title': 'Favoritos',
      'page': FavoriteMealsPage(),
    },
  ];
  int _selectedPageIndex = 0;

  void _onPageSelected(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _onPageSelected,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categorias'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favoritos'),
          ),
        ],
      ),
    );
  }
}
