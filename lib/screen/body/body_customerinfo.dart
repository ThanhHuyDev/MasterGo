import 'package:designapp/constants.dart';
import 'package:flutter/material.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,top: 30,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Portfolio", style: TextStyle(fontSize: 24.0,fontFamily: "Muli"),),
          const Padding(
            padding: EdgeInsets.only(top: 20,bottom: 20),
            child: Text("The last completed works of the contractor\n"
                "are shown below.", style: TextStyle(fontSize: 14.0,fontFamily: "Muli"),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 10),
            child: SizedBox(
              height: 260.0,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 303,
                      child: Image.asset("assets/images/image_infocustom1.png",
                          width: 303,
                          fit: BoxFit.cover)),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/image_infocustom2.png"),
                        Image.asset("assets/images/image_infocustom3.png"),
                        Image.asset("assets/images/image_infocustom4.png"),
                        Image.asset("assets/images/image_infocustom5.png"),
                      ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 20),
            child: Row(
              children: const [
                Icon(Icons.star,color: Color(0XFFFFB19D)),
                Icon(Icons.star,color: Color(0XFFFFB19D)),
                Icon(Icons.star,color: Color(0XFFFFB19D)),
                Icon(Icons.star,color: Color(0XFFFFB19D)),
                Icon(Icons.star_outline),
              ],
            ),
          ),
          const Text("Details", style: TextStyle(fontSize: 24,fontFamily: "Muli"),),
          const Padding(
            padding: EdgeInsets.only(top: 20,bottom: 10),
            child: Text("I have been working in this position for over10\n"
                "years! I have created many design solutions\n"
                "and I think my main best quality is creativity. If\n"
                "you liked my work, please contact me and see\n"
                "the professionalism and quality of my services.",
              style: TextStyle(fontSize: 14,fontFamily: "Muli"),),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, "/Settings");
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 264),
              child: Text("Read more",style: TextStyle(fontFamily: "Muli",
                  fontSize: 16.0,color: kPrimaryColor,
                  decoration: TextDecoration.underline),),
            ),
          )
        ],
      ),
    );
  }
}
