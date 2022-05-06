
import 'package:designapp/components/default_button.dart';
import 'package:designapp/screen/home/category.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';
class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,),
            _buildUsernameFormField(),
            const SizedBox(
              height: 16.0,),
            _buildPasswordFormField(),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 60),
              child: Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                    child: const Text(
                      "Forgot you password ?",
                      style: TextStyle(decoration: TextDecoration.underline,
                          fontFamily: 'Muli'),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, Home.routeName);
              },
              child: Container(
                height: 60,
                color: const Color(0xFF20C3AF),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Muli",
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
  Widget _buildUsernameFormField() {
    return Container(
      color: const Color(0xFFF7F7F7),
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: const Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Username',
            hintStyle: TextStyle(fontFamily: "Muli"),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordFormField() {
    return Container(
      color: const Color(0xFFF7F7F7),
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: const Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(fontFamily: "Muli"),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
