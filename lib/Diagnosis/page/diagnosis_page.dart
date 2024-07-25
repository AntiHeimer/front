import 'package:anti_heimer/Main/component/app_bar/app_bar3.dart';
import 'package:anti_heimer/Main/component/main_button_small_black.dart';
import 'package:anti_heimer/Main/component/main_button_small_gray.dart';
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
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(bottom: 50)),
          QuestionBox(),
          const Padding(padding: EdgeInsets.only(bottom: 20)),
          AnswerBox(),
          const Padding(padding: EdgeInsets.only(bottom: 30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.check_circle_outline_outlined,
                    size: 40,
                  )),
              Padding(padding: EdgeInsets.only(left: 135)),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.check_circle_outline_outlined,
                  size: 40,
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MainButtonSmallGray(text: '이전', onPressed: () {}),
              Padding(padding: EdgeInsets.only(left: 18)),
              MainButtonSmallBlack(text: '다음', onPressed: () {}),
            ],
          ),
        ],
      )),
    );
  }
}

class QuestionBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 45)),
            Text(
              '문제 1',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(bottom: 5)),
        Container(
          width: 320,
          height: 200,
          decoration: BoxDecoration(border: Border.all(width: 0.2)),
          child: const Text(
            "문제내용",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class AnswerBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 45)),
            Text(
              '정답',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(bottom: 5)),
        Container(
          width: 320,
          height: 60,
          decoration: BoxDecoration(border: Border.all(width: 0.2)),
          child: const Text(
            "정답 내용",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
