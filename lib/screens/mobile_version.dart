import 'package:flutter/material.dart';

class mobile_version extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final inheritedStyle = DefaultTextStyle.of(context).style;
    print('Inherited TextStyle in mobile_version: $inheritedStyle');

    return Scaffold(
      body: Center(
        child: Text("Mobile version"),
      ),
    );
  }
}
