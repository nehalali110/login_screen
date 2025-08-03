import 'package:flutter/material.dart';
import 'package:login_screen/main.dart';
import 'package:login_screen/widgets/form_input.dart';
import 'package:login_screen/widgets/password_input.dart';
import 'package:login_screen/widgets/agreement.dart';

class desktop_version extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.sizeOf(context).width;
    var screen_height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Container(
        width: screen_width,
        height: screen_height,
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
            stops: [0.1, 0.4, 0.7, 1.0],
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 10, color: Colors.white),
            ),
            width: screen_width * 0.85,
            height: screen_height * 0.9,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
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
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.orange),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create your account",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          wordSpacing: 5,
                          letterSpacing: 3,
                        ),
                      ),
                      Text(
                        "It's just few minutes and free!",
                        style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                      ),
                      SizedBox(height: 50,),
                      form_input(Icon(Icons.person), "Username"),
                      SizedBox(height: 25,),
                      form_input(Icon(Icons.mail), "Email"),
                      SizedBox(height: 25,),
                      password_input(Icon(Icons.lock), "Password"),
                      SizedBox(height: 10,),
                      check_Box(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
