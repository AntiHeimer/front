import 'package:flutter/material.dart';

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
