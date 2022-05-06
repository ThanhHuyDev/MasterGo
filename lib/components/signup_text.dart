import 'package:designapp/screen/sigin/sigin_2.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
class SignUpText extends StatelessWidget {
  const SignUpText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have an account? ",
          style: TextStyle(fontSize: 16.0,fontFamily: 'Muli'),
        ),
        GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, SignIn.routeName),
          child: const Text(
            "Sign In",
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
