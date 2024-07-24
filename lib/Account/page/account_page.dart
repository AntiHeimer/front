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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '계정',
          style: TextStyle(fontSize: 20),
        ),
        shape: const Border(
          bottom:
              BorderSide(color: Color.fromRGBO(213, 213, 213, 1), width: 1.2),
        ),
      ),
      body: Text('account'),
    );
  }
}
