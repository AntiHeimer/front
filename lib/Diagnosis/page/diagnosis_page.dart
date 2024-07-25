import 'package:anti_heimer/Main/component/app_bar/app_bar3.dart';
import 'package:flutter/material.dart';

class DiagnosisPage extends StatefulWidget {
  _DiagnosisPageState createState() => _DiagnosisPageState();
}

class _DiagnosisPageState extends State<DiagnosisPage> {
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
        children: <Widget>[Text('diagnosis')],
      )),
    );
  }
}
