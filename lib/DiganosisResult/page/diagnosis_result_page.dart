import 'package:anti_heimer/DiganosisResult/component/table_box.dart';
import 'package:anti_heimer/Main/component/app_bar/app_bar1.dart';
import 'package:anti_heimer/Main/component/main_button.dart';
import 'package:flutter/material.dart';

class DiagnosisResultPage extends StatefulWidget {
  _DiagnosisResultPageState createState() => _DiagnosisResultPageState();
}

class _DiagnosisResultPageState extends State<DiagnosisResultPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget1(title: '진단 결과'),
      body: Center(
        child: Column(children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 70),
            child: Text(
              '강민숙 님의 진단 결과',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: Text(
              '현재 치매 위험도는\n 3단계 입니다',
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 30)),
          TableBox(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 55, 0, 0),
            child: MainButton(
              text: '홈으로',
              onPressed: () {},
            ),
          )
        ]),
      ),
    );
  }
}
