import 'package:anti_heimer/Main/component/app_bar/app_bar3.dart';
import 'package:flutter/material.dart';

class ChoicePage extends StatefulWidget {
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget3(title: '진단하기'),
      body: Center(
          child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(bottom: 100)),
        ],
      )),
    );
  }
}
