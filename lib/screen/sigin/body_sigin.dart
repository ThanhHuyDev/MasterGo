import 'package:flutter/material.dart';

import '../../../components/sigin_text.dart';
import '../../../components/socal_card.dart';
import '../../components/signin_form.dart';
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
                      const EdgeInsets.only(top: 50, left: 118, right: 117),
                  child: Image.asset(
                    "assets/images/image_sigin.png",
                    height: 145,
                    width: 100,
                  ),
                ),
                const SignInForm(),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "or",
                    style: TextStyle(
                        color: Color(0xff838391),
                        fontWeight: FontWeight.w500,
                        fontSize: 16, fontFamily: 'Muli'),
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
                SizedBox(height: getProportionateScreenHeight(20)),
                const SignInText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
