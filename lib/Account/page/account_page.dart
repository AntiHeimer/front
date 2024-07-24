import 'package:anti_heimer/Main/component/app_bar/app_bar1.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget1(title: '계정'),
      body: Text('account'),
    );
  }
}
