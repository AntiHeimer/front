import 'package:anti_heimer/Main/component/app_bar/app_bar2.dart';
import 'package:anti_heimer/Main/component/main_button.dart';
import 'package:anti_heimer/Main/component/text_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget2(title: '회원가입'),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 40)),
            InputBox(text: '이름', hintText: '이름을 입력해주세요', subText: ''),
            InputBox(
                text: '아이디',
                hintText: '아이디를 입력해주세요',
                subText: '영어, 숫자 포함 8~20자리를 입력해주세요.'),
            InputBox(
                text: '비밀번호',
                hintText: '비밀번호를 입력해주세요',
                subText: '영어, 숫자, 특수문자 포함 12~24자리를 입력해주세요.'),
            InputBox(
                text: '비밀번호 확인',
                hintText: '한번 더 비밀번호를 입력해주세요',
                subText: '비밀번호가 일치하지 않습니다.'),
            Padding(padding: EdgeInsets.only(bottom: 40)),
            MainButton(text: '회원가입'),
          ],
        ),
      ),
    );
  }
}

class InputBox extends StatelessWidget {
  final String text;
  final String hintText;
  final String subText;

  const InputBox({
    required this.text,
    required this.hintText,
    required this.subText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(left: 45)),
            Text(
              text,
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 17),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(bottom: 5)),
        TextFieldWidget(hintText: hintText),
        const Padding(padding: EdgeInsets.only(bottom: 2)),
        Row(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(left: 45)),
            Text(
              subText,
              style: const TextStyle(fontSize: 10.5),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(bottom: 10)),
      ],
    );
  }
}
