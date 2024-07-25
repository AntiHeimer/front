import 'package:anti_heimer/Diagnosis/component/choice_box.dart';
import 'package:anti_heimer/Diagnosis/page/diagnosis_page.dart';
import 'package:anti_heimer/Main/component/app_bar/app_bar3.dart';
import 'package:anti_heimer/Main/component/main_button.dart';
import 'package:flutter/material.dart';

class ChoicePage extends StatefulWidget {
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  final _ward = ['강민숙', '강민지', '강민짜이', '강민식'];
  String _selectedWard = '';

  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedWard = _ward[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget3(title: '진단하기'),
      body: Center(
          child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(bottom: 65)),
          const Text(
            '피보호자를 선택해주세요',
            style: TextStyle(fontSize: 20),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 35)),
          ChoiceBox(),
          const Padding(padding: EdgeInsets.only(bottom: 3)),
          const Text('피보호자 및 보호자 등록'),
          const Padding(padding: EdgeInsets.only(bottom: 20)),
          SizedBox(
            width: 300,
            child: DropdownButtonFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(width: 0.1, color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(width: 0.1, color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(width: 0.1, color: Colors.black)),
                ),
                value: _selectedWard,
                items: _ward
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedWard = value!;
                  });
                }),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 225)),
          MainButton(
              text: '진단 시작',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DiagnosisPage();
                }));
              })
        ],
      )),
    );
  }
}
