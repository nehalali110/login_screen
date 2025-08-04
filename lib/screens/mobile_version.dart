import 'package:flutter/material.dart';

class mobile_version extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.sizeOf(context).width;
    var screen_height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Container(
        width: screen_width,
        height: screen_height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('design/background.jpg'),
            fit: BoxFit.cover,
          ),
          border: Border.all(width: 2, color: Colors.yellow),
        ),
        child: Column(
          children: [
            Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                    ),
                    child: Text(
                      "Welcome Back...",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 46,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 6,
                      ),
                    ),
                  ),
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
