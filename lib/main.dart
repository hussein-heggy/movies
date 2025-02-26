import 'package:flutter/material.dart';
import 'package:movies/app_theme.dart';
import 'package:movies/auth/forget_screen.dart';
import 'package:movies/auth/login_screen.dart';
import 'package:movies/auth/register_screen.dart';
import 'package:movies/home_screen.dart';
 
import 'package:movies/onbording/onbording.dart';
 
import 'package:movies/profile/update_profile.dart';
 

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        RegisterScreen.routeName: (_) => RegisterScreen(),
        LoginScreen.routeName: (_) => LoginScreen(),
        ForgetScreen.routeName: (_) => ForgetScreen(),

        Onbording.routeName: (_) => Onbording(),

        UpdateProfile.routeName: (_) => UpdateProfile(),

        
      },
      initialRoute: Onbording.routeName,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
