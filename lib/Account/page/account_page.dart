import 'package:anti_heimer/Main/component/app_bar.dart';
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
      appBar: AppBarWidget(title: '계정'),
      body: Text('account'),
    );
  }
}
