import 'package:flutter/material.dart';

class UserAppointments extends StatelessWidget {
  const UserAppointments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'My Appointmesnts',
          style: TextStyle(
            fontSize: 40
          ),
        ),
      ),
    );
  }
}
