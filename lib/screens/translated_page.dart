import 'package:ashar/widget/item.dart';
import 'package:ashar/widget/item2.dart';
import 'package:ashar/widget/main_drawer.dart';
import 'package:flutter/material.dart';

class TranslatedPage extends StatelessWidget {
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
              'Которулгандар',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Item2(
            term: 'Англисче термин',
            rutranslation: 'Көпчүлүк добушка ээ котормо',
            trtranslation: 'Шилтеме котормо түркө',
            kktranslation: 'Шилтеме котормо орусча',
          ),
          Item2(
            term: 'Англисче термин',
            rutranslation: 'Көпчүлүк добушка ээ котормо',
            trtranslation: 'Шилтеме котормо түркө',
            kktranslation: 'Шилтеме котормо орусча',
          ),
          Item2(
            term: 'Англисче термин',
            rutranslation: 'Көпчүлүк добушка ээ котормо',
            trtranslation: 'Шилтеме котормо түркө',
            kktranslation: 'Шилтеме котормо орусча',
          ),
        ],
      ),
    );
  }
}
