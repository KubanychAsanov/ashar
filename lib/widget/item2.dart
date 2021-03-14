import 'package:flutter/material.dart';

class Item2 extends StatelessWidget {
  String term;
  String rutranslation;
  String trtranslation;
  String kktranslation;
  Item2(
      {this.term, this.rutranslation, this.trtranslation, this.kktranslation});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      elevation: 4,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(term, style: TextStyle(fontSize: 14)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [Text(rutranslation)]),
                Row(children: [Text(trtranslation)]),
                Row(children: [Text(kktranslation)]),
              ],
            ),
            Icon(
              Icons.bookmark_border,
              color: Color(0xFFBE63F9),
            )
          ],
        ),
      ),
    );
  }
}
