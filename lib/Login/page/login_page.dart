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
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.fromLTRB(0, 100, 0, 50)),
            const Text(
              'AntiHeimer',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
                letterSpacing: -1,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 40)),
            const TextFieldWidget(hintText: '아이디를 입력하세요'),
            const Padding(padding: EdgeInsets.only(bottom: 14)),
            const TextFieldWidget(hintText: '비밀번호를 입력하세요'),
            const Padding(padding: EdgeInsets.only(bottom: 28)),
            const MainButton(text: '로그인'),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            InkWell(
              onTap: () {},
              child: const Text(
                '회원가입',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(52, 52, 52, 1),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 40)),
            const SocialLogin(),
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            Image.asset(
              'assets/images/kakao_login_large_wide.png',
              fit: BoxFit.contain,
              height: 45,
            ),
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
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1,
          width: 100,
          color: const Color.fromRGBO(113, 113, 113, 1),
        ),
        const Padding(padding: EdgeInsets.only(right: 15)),
        const Text(
          '간편로그인',
          style: TextStyle(color: Color.fromRGBO(52, 52, 52, 1)),
        ),
        const Padding(padding: EdgeInsets.only(left: 15)),
        Container(
          height: 1,
          width: 100,
          color: const Color.fromRGBO(113, 113, 113, 1),
        ),
      ],
    );
  }
}
