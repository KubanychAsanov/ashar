import 'package:ashar/widget/item3.dart';
import 'package:flutter/material.dart';

import 'widget/main_drawer.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(actions: [
        Icon(
          Icons.search,
        )
      ]),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: SafeArea(
                child: Center(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Англисче термин', style: TextStyle(fontSize: 20)),
                Text('tr: Шилтеме котормо түркчө'),
                Text('ru: Шилтеме котормо орусча'),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                  elevation: 4,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text('Кошумча сүрөттөө', style: TextStyle(fontSize: 16)),
                      Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book'),
                    ],
                  ),
                )
              ],
            ))),
          ),
          Expanded(
            flex: 6,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Item3(),
                    Item3(),
                    Item3(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
