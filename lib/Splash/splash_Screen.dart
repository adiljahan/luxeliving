import 'package:flutter/material.dart';
import 'package:luxe_living/Constance/imageconst.dart';
import 'package:luxe_living/Feature/Auth/screens/Home_screen.dart';
import 'package:luxe_living/main.dart';

import '../Constance/colorConst.dart';
import '../Feature/Auth/screens/Product_Details.dart';
import '../Feature/Auth/screens/loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4))
        .then((value) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
            (route) => false));
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.lightorange,
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(ImageConst.shofa,)
            ],
          ),
        ],
      ),
    );
  }
}
