
import 'package:flutter/material.dart';
import '../../../components/signup_text.dart';
import '../../../components/socal_card.dart';
import '../../components/signup_form.dart';
import '../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(top: 50, left: 99, right: 98),
                  child: Image.asset(
                    "assets/images/image_sigup.png",
                    height: 141,
                    width: 138,
                  ),
                ),
                const SignUpForm(),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "or",
                    style: TextStyle(
                        color: Color(0xff838391),
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0, fontFamily: 'Muli'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const SignUpText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
