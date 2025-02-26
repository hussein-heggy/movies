import 'package:flutter/material.dart';

class DefaultTexdtButton extends StatelessWidget {
  VoidCallback onpressed;
  String label;
  DefaultTexdtButton({required this.onpressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onpressed, child: Text(label));
  }
}
