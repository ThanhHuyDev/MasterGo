
import 'package:designapp/screen/home/category.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            const SizedBox(height: 30.0),
            _buildUsernameFormField(),
            const SizedBox(height: 16.0),
            _buildPasswordFormField(),
            const SizedBox(height: 16.0),
            _buildConfimPasswordFormField(),
            const SizedBox(height: 21.0),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, Home.routeName);
              },
              child: Container(
                height: 60,
                color: const Color(0xFF20C3AF),
                child: const Center(
                  child: Text(
                    "Sign Up",
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
            hintText: 'Enter email',
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
            hintText: 'Enter password',
            hintStyle: TextStyle(fontFamily: "Muli"),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
  Widget _buildConfimPasswordFormField() {
    return Container(
      color: const Color(0xFFF7F7F7),
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: const Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Confirm password',
            hintStyle: TextStyle(fontFamily: "Muli"),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

