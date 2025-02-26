import 'package:flutter/material.dart';

class DefaultElevetedButton extends StatelessWidget {
  VoidCallback onpressed;
  String label;

  DefaultElevetedButton({required this.onpressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      child: Text(label),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.sizeOf(context).width, 57),
      ),
    );
  }
}
