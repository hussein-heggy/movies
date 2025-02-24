import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies/app_theme.dart';
import 'package:movies/auth/login_screen.dart';
import 'package:movies/widgets/default_eleveted_button.dart';
import 'package:movies/widgets/default_text_button.dart';
import 'package:movies/widgets/default_text_form_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static String routeName = "/register";
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();
  List<String> image = [
    "assets/images/gamer1.png",
    "assets/images/gamer1.png",
    "assets/images/gamer1.png",
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: height * 0.02),
                CarouselSlider.builder(
                  itemCount: 3,
                  options: CarouselOptions(
                      height: height * 0.25,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.5,
                      // aspectRatio: 2,
                      viewportFraction: 0.36),
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    child: Image.asset(image[itemIndex]),
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    DefaultTextFormField(
                        validator: (value) {
                          if (value == null || value.length < 3) {
                            return "Invalid name";
                          }
                          return null;
                        },
                        controller: nameController,
                        hintText: "Name",
                        prefixeIconName: "Name"),
                    SizedBox(height: height * 0.025),
                    DefaultTextFormField(
                        validator: (value) {
                          if (value == null || value.length < 8) {
                            return "Invalid email";
                          }
                          return null;
                        },
                        controller: emailController,
                        hintText: "Email",
                        prefixeIconName: "Email"),
                    SizedBox(height: height * 0.025),
                    DefaultTextFormField(
                        validator: (value) {
                          if (value == null || value.length < 8) {
                            return "Invalid password";
                          }
                          return null;
                        },
                        isPassword: true,
                        controller: passwordController,
                        hintText: "Password",
                        prefixeIconName: "password"),
                    SizedBox(height: height * 0.025),
                    DefaultTextFormField(
                        validator: (value) {
                          if (value == null ||
                              value != passwordController.text) {
                            return "Invalid ConfirmPassword";
                          }
                          return null;
                        },
                        isPassword: true,
                        controller: confirmPasswordController,
                        hintText: "ConfirmPassword",
                        prefixeIconName: "password"),
                    SizedBox(height: height * 0.025),
                    DefaultTextFormField(
                        validator: (value) {
                          if (value == null || value.length < 15) {
                            return "Invalid PhoneNumber";
                          }
                          return null;
                        },
                        controller: phoneNumberController,
                        hintText: "PhoneNumber",
                        prefixeIconName: "Phone"),
                    SizedBox(height: height * 0.025),
                    DefaultElevetedButton(
                        onpressed: register,
                        background: AppTheme.primary,
                        foreground: AppTheme.black,
                        lable: "Creat Account"),
                    SizedBox(height: height * 0.001),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already Have Account",
                            style: Theme.of(context).textTheme.bodySmall),
                        DefaultTextButton(
                            onpressed: () {
                              Navigator.of(context)
                                  .pushNamed(LoginScreen.routeName);
                            },
                            lable: "Login"),
                      ],
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void register() {
    if (formKey.currentState!.validate()) {
      // regisret
    }
  }
}
