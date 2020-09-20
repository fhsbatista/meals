import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainDrawer extends StatelessWidget {
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
              ),
              SizedBox(height: 20),
              _OptionWidget(
                icon: Icons.settings,
                label: 'Configurações',
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

  _OptionWidget({
    @required this.icon,
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 26, color: Colors.white,),
      title: Text(
        label,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
      onTap: () {},
    );
  }
}
