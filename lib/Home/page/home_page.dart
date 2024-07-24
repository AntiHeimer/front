import 'package:anti_heimer/Main/component/app_bar/app_bar1.dart';
import 'package:anti_heimer/Main/component/main_button.dart';
import 'package:anti_heimer/SignUp/page/signup_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget1(title: '메인'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(bottom: 400)),
            MainButton(
              text: '진단하기',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpPage();
                }));
              },
            ),
            const Padding(padding: EdgeInsets.only(bottom: 17)),
            MainButton(
              text: '진단결과 확인하기',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpPage();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
