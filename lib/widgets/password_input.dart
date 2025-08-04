import 'package:flutter/material.dart';

class password_input extends StatefulWidget{
  late Widget icon;
  late String text;
  password_input(this.icon,this.text);
  @override
  State<password_input> createState() => _password_input(icon,text);
}

class _password_input extends State<password_input>{
  late Widget icon;
  late String text;
  var _obscure_text = true;
  _password_input(this.icon, this.text);

  void toggleVisibility(){
    setState(() {
      _obscure_text = !_obscure_text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Row(
          children: [
            icon,
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                obscureText: _obscure_text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: () => toggleVisibility(), icon: _obscure_text ? Icon(Icons.visibility, color: Colors.blueGrey,) : Icon(Icons.visibility_off, color: Colors.black,)),
                  hintText: text,
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 180, 175, 175),
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}