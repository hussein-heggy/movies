import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies/app_theme.dart';

class DefaultTextFormField extends StatefulWidget {
  bool isPassword;
  String prefixeIconName;
  String? hintText;
  TextEditingController controller;
  String? Function(String?)? validator;
  DefaultTextFormField(
      {required this.controller,
      this.isPassword = false,
      this.hintText,
      required this.prefixeIconName,
      this.validator});

  @override
  State<DefaultTextFormField> createState() => _DefaultTextFormFieldState();
}

class _DefaultTextFormFieldState extends State<DefaultTextFormField> {
  late bool isObsecure = widget.isPassword;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppTheme.black,
      style: TextStyle(color: AppTheme.white),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.controller,
      validator: widget.validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppTheme.grey,
        hintText: widget.hintText,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  isObsecure = !isObsecure;
                  setState(() {});
                },
                icon:
                    Icon(isObsecure ? Icons.visibility : Icons.visibility_off),
                color: AppTheme.white,
              )
            : null,
        prefixIcon: SvgPicture.asset(
          "assets/icons/${widget.prefixeIconName}.svg",
          height: 24,
          width: 24,
          fit: BoxFit.scaleDown,
        ),
      ),
      obscureText: isObsecure,
    );
  }
}
