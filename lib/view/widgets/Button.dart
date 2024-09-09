import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.tex, required this.onPressed});
  
  final String tex;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(tex),
      color: Colors.orange,
    );
  }
}
