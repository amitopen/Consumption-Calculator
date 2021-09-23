import 'package:finance_calculator/EntryRow.dart';
import 'package:flutter/material.dart';

class EntryTableWoven extends StatelessWidget {
  final List<TextEditingController> controllersWoven;

  EntryTableWoven(this.controllersWoven);

  @override
  Widget build(BuildContext context) {
    var row1 = [
      {
        "label": "Width",
        "hint": "e.g. 00",
        "controllersWoven": controllersWoven[0]
      },
      {
        "label": "Allowence",
        "hint": "00",
        "controllersWoven": controllersWoven[1]
      }
    ];

    final row2 = [
      {
        "label": "Length",
        "hint": "e.g. 00",
        "controllersWoven": controllersWoven[2]
      },
      {
        "label": "Aw",
        "hint": "e.g. 00",
        "controllersWoven": controllersWoven[3]
      }
    ];

    final row3 = [
      {
        "label": "Part",
        "hint": "e.g. 00",
        "controllersWoven": controllersWoven[4]
      },
    ];
    final row4 = [
      {
        "label": "Cutable",
        "hint": "e.g. 00",
        "controller": controllersWoven[5]
      },
      {
        "label": "Wastage %",
        "hint": "e.g. \%2",
        "controller": controllersWoven[6]
      }
    ];

    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 10,
        ),
        EntryRow(row1),
        EntryRow(row2),
        EntryRow(row3),
        EntryRow(row4),
        Container(
          width: double.infinity,
          height: 10,
        ),
      ],
    );
  }
}
