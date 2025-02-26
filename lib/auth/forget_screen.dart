import 'package:flutter/material.dart';
import 'package:movies/widgets/default_eleveted_button.dart';
import 'package:movies/widgets/default_text_form_field.dart';

class ForgetScreen extends StatefulWidget {
  static String routeName = '/forget';

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/Forgot password.png"),
              DefaultTextFormField(
                  validator: (value) {
                    if (value == null || value.length < 8) {
                      return "Invalid email";
                    }
                    return null;
                  },
                  controller: emailController,
                  hintText: "Email",
                  prefixeIconName: "email"),
              SizedBox(height: height * 0.02),
              DefaultElevetedButton(
                  onpressed: VerifyEmail, label: "Verify Email"),
            ],
          ),
        ),
      ),
    );
  }

  void VerifyEmail() {
    // VerifyEmail
  }
}
