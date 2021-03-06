import 'package:finance_calculator/EntryRow.dart';
import 'package:flutter/material.dart';

class EntryTable extends StatelessWidget {
  final List<TextEditingController> controllers;

  EntryTable(this.controllers);

  @override
  Widget build(BuildContext context) {
    var row1 = [
      {
        "label": "Body Length",
        "hint": "e.g. 00",
        "controller": controllers[0]
      },
      {
        "label": "Sleeve Length",
        "hint": "00",
        "controller": controllers[1]
      }
    ];

    final row2 = [
      {
        "label": "Allowence",
        "hint": "e.g. 00",
        "controller": controllers[2]
      },
      {
        "label": "Width",
        "hint": "e.g. 00",
        "controller": controllers[3]
      }

    ];

    final row3 = [
      {
        "label": "AW",
        "hint": "e.g. 00",
        "controller": controllers[4]
      },
      {
        "label": "Part",
        "hint": "e.g. 00",
        "controller": controllers[5]
      }
    ];
    final row4 = [
      {
        "label": "GSM",
        "hint": "e.g. 00",
        "controller": controllers[6]
      },
      {
        "label": "Wastage %",
        "hint": "e.g. \%2",
        "controller": controllers[7]
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
