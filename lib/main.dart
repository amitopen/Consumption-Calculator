import 'package:finance_calculator/EntryProjectionTab.dart';
import 'package:flutter/material.dart';

import 'woven/WovenTab.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<TextEditingController> controllers = [
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController()
  ];

  List<Map<String, String>> values;
  String result;

  void calculate() {
    setState(() {
      int bodyLength = int.parse(controllers[0].text);
      int sleeveLength = int.parse(controllers[1].text);
      int allowence = int.parse(controllers[2].text);
      int width = int.parse(controllers[3].text);
      int aw = int.parse(controllers[4].text);
      int part = int.parse(controllers[5].text);
      double gsm = double.parse(controllers[6].text);
      double wastage = double.parse(controllers[7].text) / 100;

      List<Map<String, String>> temp = [
        {"index": "Knit", "value": ""},
      ];

      double futureValue = ((bodyLength + sleeveLength + allowence) *
                  (width + aw) *
                  part *
                  gsm *
                  12) /
              10000000 +
          wastage;

      int timePeriod = 2;

      /* for (int i = 1; i <= timePeriod; i++) {
        String age = (startAge + (i / 12)).toStringAsFixed(0);
        if (i % 12 == 0) {
          if (futureValue > 1000000000)
            continue;
          else
            temp.add({"index": age, "value": futureValue.toStringAsFixed(0)});
        }

        futureValue = futureValue * (1 + mIntRate) + mAdditions;
      } */
      temp.add({"index": "Result", "value": futureValue.toStringAsFixed(4)});
      values = temp;
      result = futureValue.toStringAsFixed(4);
      print("hello");
      print(futureValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Consumptions Calculator",
                style: TextStyle(fontSize: 22),
              ),
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: "Knit",
                ),
                Tab(
                  text: "Woven",
                ),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            EntryProjectionTab(values, controllers, calculate),
            WovenTab(controllers, calculate, result),
          ]),
        ),
      ),
    );
  }
}
