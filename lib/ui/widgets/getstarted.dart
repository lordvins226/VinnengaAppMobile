import 'package:flutter/material.dart';

import 'button_submit.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonSubmit(
        title: 'Commencer',
        onPressed: () {
          Navigator.pushReplacementNamed(context, "/Login");
        },
      ),
    );
  }
}