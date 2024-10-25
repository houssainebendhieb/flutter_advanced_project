import 'package:flutter/material.dart';

class TextAndLogo extends StatelessWidget {
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 38,
          width: 38,
          child: Image.asset("assets/images/Frame.png", fit: BoxFit.cover),
        ),
        const SizedBox(
          width: 10,
        ),
        Text("Docdoc",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))
      ],
    );
  }
}
