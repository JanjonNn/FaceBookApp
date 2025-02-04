import 'package:facebookapp/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomTextFormField.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 86.97,
                width: 87.54,
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              CustomTextFormField(
                controller: email,
                hintText: "Mobile Number or Email Address",
                obscureText: false,
                validator: emailValidator,
                icon: null,
              ),
              SizedBox(
height: size.height*.03,
              ),
              CustomTextFormField(

                controller: password,
                hintText: "Password",
                validator: passwordValidator,
                obscureText: true,
                icon: Icon(
                  Icons.visibility_off,
                  color: Color.fromRGBO(137, 143, 156, 1),
                ),
              ),
              SizedBox(
                height: size.height * .05,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  backgroundColor: Color(0xFF1877F2),
                  minimumSize: Size(550, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homescreen(),
                    ),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: size.height * .03,
              ),
              Center(
                child: Container(
                  child: Text(

                    "Forgotten Password ?",
                    style: TextStyle(
                      color: Color(0xFF898F9C),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.2,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xFF1877F2),
                    ),
                    borderRadius: BorderRadius.circular(16,),
                  ),
                  backgroundColor: Colors.white,
                  minimumSize: Size(550, 50),
                ),
                onPressed: () {},
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    color: Color(0xFF1877F2),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Image.asset(
                "assets/images/meta.png",
                width: 98,
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? emailValidator(String? email) {
    final bool emailValid = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email!);
    if (emailValid) {
      return "Please Enter Valid Email And Password";
    } else if (email.isEmpty) {
      return 'Please enter Email';
    }

    return null;
  }

  String? passwordValidator(String? value) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }
}
