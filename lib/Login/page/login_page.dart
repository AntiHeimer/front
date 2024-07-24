import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  _LoaginPageState createState() => _LoaginPageState();
}

class _LoaginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(0, 100, 0, 50)),
            Text(
              'AntiHeimer',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                letterSpacing: -1,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 40)),
            TextFieldWidget(hintText: '아이디를 입력하세요'),
            Padding(padding: EdgeInsets.only(bottom: 14)),
            TextFieldWidget(hintText: '비밀번호를 입력하세요'),
            Padding(padding: EdgeInsets.only(bottom: 28)),
            MainButton(text: '로그인'),
          ],
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final String hintText;

  const TextFieldWidget({
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 308,
      height: 55,
      child: TextField(
        cursorColor: Colors.transparent,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide:
                BorderSide(width: 1, color: Color.fromRGBO(113, 113, 113, 1)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide:
                BorderSide(width: 1, color: Color.fromRGBO(113, 113, 113, 1)),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
              fontSize: 15, color: Color.fromRGBO(113, 113, 113, 1)),
        ),
      ),
    );
  }
}

class MainButton extends StatelessWidget {
  final String text;

  const MainButton({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 308,
      height: 55,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: Colors.black, foregroundColor: Colors.white),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
