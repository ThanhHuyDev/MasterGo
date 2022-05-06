import 'package:designapp/screen/sigup/sigup_2.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

class SignInText extends StatelessWidget {
  const SignInText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: 16.0,fontFamily: 'Muli'),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUp.routeName),
          child: const Text(
            "Sign Up",
            style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Muli',
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
