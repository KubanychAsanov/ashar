import 'package:flutter/material.dart';

class Item3 extends StatelessWidget {
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [Text('Кээ бир котормо')]),
                Row(children: [Text('Автор: Баланчаев Түкүнчө')]),
              ],
            ),
            Row(
              children: [
                Icon(Icons.comment, color: Color(0xFFBE63F9)),
                SizedBox(width: 20),
                Icon(Icons.thumb_up_alt_outlined, color: Color(0xFFBE63F9)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
