import 'package:anti_heimer/Home/page/home_page.dart';
import 'package:anti_heimer/Login/component/social_login.dart';
import 'package:anti_heimer/Main/component/main_button.dart';
import 'package:anti_heimer/Main/component/text_field.dart';
import 'package:anti_heimer/SignUp/page/signup_page.dart';
import 'package:anti_heimer/main.dart';
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
            MainButton(
              text: '로그인',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyApp();
                }));
              },
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpPage();
                }));
              },
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
