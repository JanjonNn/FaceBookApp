import 'package:facebookapp/HomeScreen.dart';
import 'package:facebookapp/LoginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Loginscreen(),
        ),
      );
    },);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 250,),
          Center(
            child: Expanded(
              child: Image.asset(
                "assets/images/logo.png",
                height: 86.97,
                width: 87.54,
              ),
            ),
          ),
Spacer(),
          Text(
            "From",
            style: TextStyle(
              color: Color(0xFF898F9C),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/images/meta.png",
            width: 98,
            height: 40,
          ),
        ],
      ),
    );
  }
}
