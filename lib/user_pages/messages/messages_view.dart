import 'package:flutter/material.dart';

class UserMessages extends StatelessWidget {
  const UserMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Messages',
          style: TextStyle(
              fontSize: 40
          ),
        ),
      ),
    );
  }
}
