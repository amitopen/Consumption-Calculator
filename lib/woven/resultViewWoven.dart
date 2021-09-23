import 'package:flutter/material.dart';

class ResultViewWoven extends StatelessWidget {
  final String result;

  ResultViewWoven(this.result);

  @override
  Widget build(BuildContext context) {
    if (result != null)
      return Container(margin: EdgeInsets.only(top: 10), child: Text(result));
    else {
      return Text("");
    }
  }
}
