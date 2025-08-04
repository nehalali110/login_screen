import 'package:flutter/material.dart';

class check_Box extends StatefulWidget {
  @override
  State<check_Box> createState() => _check_Box();
}

class _check_Box extends State<check_Box> {
  bool isChecked = false;
  void toggleCheck(bool? value) {
    setState(() {
      isChecked = (value ?? false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith<Color>((
            Set<MaterialState> states,
          ) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.black;
            }
            return Colors.blueGrey;
          }),
          value: isChecked,
          onChanged: (value) => toggleCheck(value),
        ),
        SizedBox(width: 10,),
        Text("I agree with terms and conditions", style: TextStyle(color: const Color.fromARGB(255, 180, 175, 175)),)
      ],
    );
  }
}
