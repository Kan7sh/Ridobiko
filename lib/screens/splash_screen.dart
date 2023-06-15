// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:ridobiko_kanish/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }
  
  navigateToHome()async{
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Image.asset(
          "assets/images/logo.jpg",
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
