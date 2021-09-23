import 'package:finance_calculator/ProjectionCell.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProjectionRow extends StatelessWidget {
  final String result;
  final String value;

  ProjectionRow(this.result, this.value);

  @override
  Widget build(BuildContext context) {
    final currency = new NumberFormat("#,##0", "en_US");
    FontWeight bold;
    String formattedValue;
    Color labelColor;

    if (result == "Result") {
      bold = FontWeight.bold;
      formattedValue = value;
      labelColor = Colors.green;
    } else {
      labelColor = Colors.black;
      formattedValue = value;
    }

    return Card(
      elevation: 3,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
//        decoration: const BoxDecoration(
//          border: Border(
//            bottom: BorderSide(
//              width: 1,
//              color: Colors.green,
//            ),
//          ),
//        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ProjectionCell(result, bold, labelColor, Icons.person),
            Container(
              width: 1,
              height: 45,
            ),
            ProjectionCell(formattedValue, bold, labelColor, Icons.attach_money),
          ],
        ),
      ),
    );
  }
}
