import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meals/modules/categories/ui/pages/categories_page.dart';
import 'package:meals/modules/categories/ui/pages/main_page.dart';
import 'package:meals/modules/settings/ui/pages/settings_page.dart';

class MainDrawer extends StatelessWidget {
  void _openMainPage(BuildContext context) =>
      Navigator.pushReplacementNamed(context, MainPage.routeName);

  void _openSettingsPage(BuildContext context) =>
      Navigator.pushNamed(context, SettingsPage.routeName);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Vamos Cozinhar!',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              _OptionWidget(
                icon: Icons.restaurant_menu,
                label: 'Refeições',
                onClick: () => _openMainPage(context),
              ),
              SizedBox(height: 20),
              _OptionWidget(
                icon: Icons.settings,
                label: 'Configurações',
                onClick: () => _openSettingsPage(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OptionWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onClick;

  _OptionWidget({
    @required this.icon,
    @required this.label,
    @required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        color: Colors.white,
      ),
      title: Text(
        label,
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      onTap: onClick,
    );
  }
}
