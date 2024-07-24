import 'package:anti_heimer/Login/page/login_page.dart';
import 'package:flutter/material.dart';

class AppBarWidget1 extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarWidget1({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontSize: 20),
      ),
      shape: const Border(
        bottom: BorderSide(color: Color.fromRGBO(213, 213, 213, 1), width: 1.2),
      ),
      leading: IconButton(
        icon: const Icon(Icons.login),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return LoginPage();
          }));
        },
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            icon: const Icon(
              Icons.notifications_none_rounded,
              size: 32,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
