import 'package:finance_calculator/CalculateButton.dart';
import 'package:finance_calculator/woven/entryTbleWoven.dart';
import 'package:finance_calculator/woven/resultViewWoven.dart';
import 'package:flutter/material.dart';

class WovenTab extends StatelessWidget {
  final List<TextEditingController> controllersWoven;
  final Function calculate;
  String result;

  WovenTab(this.controllersWoven, this.calculate, this.result);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        EntryTableWoven(controllersWoven),
        CalculateButton(calculate),
        Text("woven"),
        ResultViewWoven(result),
      ],
    );
  }
}
