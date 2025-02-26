import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies/app_theme.dart';
import 'package:movies/auth/forget_screen.dart';
import 'package:movies/auth/register_screen.dart';
import 'package:movies/widgets/default_eleveted_button.dart';
import 'package:movies/widgets/default_texdt_button.dart';

import 'package:movies/widgets/default_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(
            16,
          ),
          child: SafeArea(
            child: Column(
              children: [
                Image.asset("assets/images/movies-logo.png"),
                SizedBox(height: height * 0.02),
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
                DefaultTextFormField(
                    isPassword: true,
                    validator: (value) {
                      if (value == null || value.length < 8) {
                        return "Invalid password";
                      }
                      return null;
                    },
                    // isPassword: true,
                    controller: passwordController,
                    hintText: "Password",
                    prefixeIconName: "password"),
                SizedBox(height: height * 0.02),
                Align(
                  alignment: Alignment.bottomRight,
                  child: DefaultTexdtButton(
                    label: "Forget Password ?",
                    onpressed: () {
                      Navigator.of(context).pushNamed(ForgetScreen.routeName);
                    },
                  ),
                ),
                SizedBox(height: height * 0.02),
                DefaultElevetedButton(onpressed: login, label: "Login"),
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t Have Account ?",
                        style: Theme.of(context).textTheme.bodySmall),
                    DefaultTexdtButton(
                      label: "Create One",
                      onpressed: () {
                        Navigator.of(context)
                            .pushNamed(RegisterScreen.routeName);
                      },
                    )
                  ],
                ),
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 2,
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      color: AppTheme.primary,
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.03,
                    ),
                    Text(
                      "OR",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppTheme.primary),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.03,
                    ),
                    Container(
                      height: 2,
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      color: AppTheme.primary,
                    )
                  ],
                ),
                SizedBox(height: height * 0.025),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.sizeOf(context).width, 57),
                    ),
                    onPressed: loginWithGoogal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/google-icon.svg",
                          height: 24,
                          width: 24,
                          fit: BoxFit.scaleDown,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Login With Googal",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: AppTheme.black),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void loginWithGoogal() {
    // loginWithGooga
  }

  void login() {
    if (formKey.currentState!.validate()) {
      // login
    }
  }
}
