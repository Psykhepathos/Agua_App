import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/novo_login.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration:
                  BoxDecoration(color: const Color.fromRGBO(92, 190, 191, 1)),
            ),
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      width: 300,
                      height: 300,
                      child: Image.asset('assets/images/tambasa.png'),
                    ),
                    AuthForm(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
