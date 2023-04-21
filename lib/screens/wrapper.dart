import 'package:club_lok_test/screens/landing_screen/landing_screen.dart';
import 'package:club_lok_test/screens/selectrolepage/select_role_page.dart';
import 'package:club_lok_test/screens/login/test_login.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    //return either Home aur authenticate
    return const LandingScreen();
    //return const Authenticate();
  }
}
