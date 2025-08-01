import 'package:flutter/material.dart';

class desktop_version extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 8, 101, 177),
            const Color.fromARGB(255, 10, 80, 138),
            const Color.fromARGB(255, 6, 53, 92),
            const Color.fromARGB(255, 4, 51, 90),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1,0.4,0.7,1.0]
        )
      ),
    );
  }
}