import 'package:flutter/material.dart';
import 'package:movies/app_theme.dart';
import 'package:movies/widgets/default_eleveted_button.dart';
import 'package:movies/widgets/default_texdt_button.dart';
import 'package:movies/widgets/default_text_form_field.dart';

class UpdateProfile extends StatelessWidget {
  static String routeName = "/update_profile";
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick avatar"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            Center(
              child: Image.asset(
                "assets/images/gamer1.png",
                height: height * .16,
                width: width * .34,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DefaultTextFormField(
                controller: nameController,
                prefixeIconName: "profile_selected"),
            SizedBox(
              height: 16,
            ),
            DefaultTextFormField(
                controller: phoneController, prefixeIconName: "phone"),
            SizedBox(
              height: 20,
            ),
            TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: AppTheme.white,
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {},
                child: Text("Reset Password")),
            SizedBox(
              height: height * .25,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.sizeOf(context).width, 57),
                  backgroundColor: AppTheme.red,
                  foregroundColor: AppTheme.white,
                ),
                onPressed: () {},
                child: Text("Delete Account")),
            SizedBox(
              height: 16,
            ),
            DefaultElevetedButton(onpressed: () {}, label: "Update Data"),
          ],
        ),
      ),
    );
  }
}
