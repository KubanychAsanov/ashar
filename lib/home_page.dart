import 'package:ashar/widget/item.dart';
import 'package:flutter/material.dart';
import 'widget/main_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(actions: [
        Icon(
          Icons.search,
        )
      ]),
      body:   Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10),
            child: Text(
              'Котормосу жоктор',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Item(
            term: 'CPU',
            rutranslation: 'КПУ',
            trtranslation: 'islemci',
            kktranslation: 'Орталык Есептеуіш бөлім',
          ),
          Item(
            term: 'RAM',
            rutranslation: 'ОЗУ',
            trtranslation: 'Veri deposu',
            kktranslation: 'Жедел жадтау Кұрылғысы',
          ),
          Item(
            term: 'CPU',
            rutranslation: 'КПУ',
            trtranslation: 'islemci',
            kktranslation: 'Орталык Есептеуіш бөлім',
          ),
        ],
      ),
    );
  }
}
