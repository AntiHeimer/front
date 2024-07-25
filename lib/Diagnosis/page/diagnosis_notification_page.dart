import 'package:anti_heimer/Diagnosis/page/choice_page.dart';
import 'package:anti_heimer/Main/component/app_bar/app_bar3.dart';
import 'package:anti_heimer/Main/component/main_button.dart';
import 'package:flutter/material.dart';

class DiagnosisNotificationPage extends StatefulWidget {
  _DiagnosisNotificationPageState createState() =>
      _DiagnosisNotificationPageState();
}

class _DiagnosisNotificationPageState extends State<DiagnosisNotificationPage> {
  bool _isChecked = false;

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
          const Padding(
            padding: EdgeInsets.only(bottom: 30),
          ),
          const Text(
            '안내 사항',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 25)),
          SizedBox(
            height: 350,
            width: 300,
            child: Container(color: Colors.black26),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 90)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Transform.scale(
                scale: 0.7,
                child: Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  side: const BorderSide(color: Colors.black, width: 0.5),
                  fillColor: const MaterialStatePropertyAll(Colors.white),
                  checkColor: Colors.black,
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 5)),
              const Text(
                '다시 보지 않기',
                style: TextStyle(fontSize: 12),
              ),
              const Padding(padding: EdgeInsets.only(right: 60)),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 7)),
          MainButton(
              text: '진단 시작',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChoicePage();
                }));
              })
        ],
      )),
    );
  }
}
