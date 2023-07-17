import 'package:flutter/material.dart';

class UserNotification extends StatelessWidget {
  const UserNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Notifications',
          style: TextStyle(
              fontSize: 40
          ),
        ),
      ),
    );
  }
}
