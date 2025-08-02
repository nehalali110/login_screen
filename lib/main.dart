import 'package:flutter/material.dart';
import 'screens/desktop_version.dart';
import 'screens/mobile_version.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login To App",
      home: LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth < 950){
            return mobile_version();
          } else{
            return desktop_version();
          }
        },
      ),
    );
  }
}