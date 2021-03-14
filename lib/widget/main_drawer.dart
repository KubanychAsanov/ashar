import 'package:ashar/screens/translated_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../authentication_service.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(IconData icon, String title, Function tabHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        color: Color(0xFFBE63F9),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
      ),
      onTap: tabHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 80),
          buildListTile(
            Icons.web_rounded,
            'Котормосу жоктор',
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTile(
            Icons.web_rounded,
            'Которулгандар',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TranslatedPage()),
              );
            },
          ),
          buildListTile(
            Icons.person,
            'Аккаунт',
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTile(
            Icons.bookmark_border,
            'Тандалгандар',
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTile(
            Icons.settings,
            'Орнотуулар',
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          RaisedButton(
            onPressed: () {
              context.read<AuthenticationService>().signOut();
            },
            child: Text("Sign out"),
          ),
          Spacer(),
          ListTile(
            leading: Icon(
              Icons.dry_outlined,
              size: 26,
              color: Color(0xFFBE63F9),
            ),
            title: Text(
              'Ashar.App',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
