import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String? icon;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Padding(
        padding: const EdgeInsets.only(right: 5,left: 5),
        child: InkWell(
          onTap: (){
          },
          splashColor: Colors.grey,
          child: Container(
            height: 60,
            width: 90,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: const Color(0xffE2E2E0),
              ),
            ),
            child: Center(child: SvgPicture.asset(icon!)),
          ),
        ),
      ),
    );
  }
}
