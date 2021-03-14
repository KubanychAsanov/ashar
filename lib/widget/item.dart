import 'package:flutter/material.dart';

import '../item-detail_page.dart';

class Item extends StatelessWidget {
  String term;
  String rutranslation;
  String trtranslation;
  String kktranslation;
  Item({this.term, this.rutranslation, this.trtranslation, this.kktranslation});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(term, style: TextStyle(fontSize: 20)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text('ru: ', style: TextStyle(color: Color(0xFFBE63F9))),
                    Text(rutranslation)
                  ]),
                  Row(children: [
                    Text('tr: ', style: TextStyle(color: Color(0xFFBE63F9))),
                    Text(trtranslation)
                  ]),
                  Row(children: [
                    Text('кк: ', style: TextStyle(color: Color(0xFFBE63F9))),
                    Text(kktranslation)
                  ]),
                ],
              ),
              Icon(
                Icons.bookmark_border,
                color: Color(0xFFBE63F9),
              )
            ],
          ),
        ),
      ),
    );
  }
}
