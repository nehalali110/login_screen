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
          image: DecorationImage(
            image: AssetImage('design/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              //border: Border.all(width: 10, color: Colors.white),
            ),
            width: screen_width * 0.85,
            height: screen_height * 0.9,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  decoration: BoxDecoration(
                    //border: Border.all(width: 1, color: Colors.white),
                  ),
                  child: Padding(
                    padding: EdgeInsetsGeometry.fromLTRB(screen_width * 0.02, 0, 0, 0),
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
                ),
                //SizedBox(width: screen_width * 0.2,),
                Container(
                  decoration: BoxDecoration(
                    //border: Border.all(width: 2, color: Colors.orange),
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
                      SizedBox(height: 50),
                      form_input(
                        Icon(Icons.person, color: Colors.blueGrey),
                        "Username",
                      ),
                      SizedBox(height: 25),
                      form_input(
                        Icon(Icons.mail, color: Colors.blueGrey),
                        "Email",
                      ),
                      SizedBox(height: 25),
                      password_input(
                        Icon(Icons.lock, color: Colors.blueGrey),
                        "Password",
                      ),
                      SizedBox(height: 10),
                      check_Box(),
                      SizedBox(height: 10),
                      Container(
                        width: 360,
                        height: 50,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey,
                              blurRadius: 4,
                              offset: Offset(2, 4),
                            ),
                          ],
                        ),
                        child: Expanded(
                          child: ElevatedButton(
                            onPressed: () => print("Form submitted!"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(
                                255,
                                10,
                                75,
                                128,
                              ),
                              foregroundColor: Colors.white,
                              shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),

                            child: Text("Create my account"),
                          ),
                        ),
                      ),
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
