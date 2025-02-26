import 'package:flutter/material.dart';
import 'package:movies/profile/update_profile.dart';
import 'package:movies/widgets/default_eleveted_button.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: DefaultElevetedButton(
            onpressed: () =>
                Navigator.pushNamed(context, UpdateProfile.routeName),
            label: "Update Profile"),
      ),
    );
    ;
  }
}
