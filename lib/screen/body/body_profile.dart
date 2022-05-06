import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/profile.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}
class _BodyState extends State<Body> {
   String image = "assets/images/avatar_profile.png";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 40),
          ClipOval(
            child: Material(
              color: Colors.transparent,
              child: Image.asset(image,
                fit: BoxFit.cover,
                width: 128,
                height: 128,
              ),
            ),
          ),
          // Image.asset("assets/images/avatar_profile.png",height: 145),
          const SizedBox(height: 20),
          const Text("Jeremías del Pozo",style: TextStyle(color: Color(0XFF525464),fontSize: 24.0,fontFamily: "Muli", fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.only(left: 111),
            child: Row(children: const [
              Text("New York * ", style: TextStyle(fontFamily: "Muli",fontSize: 16,color: Color(0xff838391)),),
              Text("ID: 1120611",style: TextStyle(fontFamily: "Muli",fontSize: 16,color: Color(0xff838391)))
            ],),
          ),
          const SizedBox(height: 20),
          const Text("Edit",style: TextStyle(decoration: TextDecoration.underline,color: Color(0xffFFB19D)),),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "/Notification");
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xffF2F2F2),
                          border: Border.all(color:const Color(0xffE2E2E0).withOpacity(0.5),width: 1)
                      ),
                      child: const Center(
                        child: Text(
                          "About Me",
                          style: TextStyle(
                              color: Color(0xff838391),
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              fontFamily: "Muli"
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "/Notification");
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      color: const Color(0xFF20C3AF),
                      child: const Center(
                        child: Text(
                          "Reviews",
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
                ),
              ],
            ),
          ),
          const SizedBox(height: 35),
          Expanded(
              child: Container(
                width: 412,
                color: const Color(0xFF525464),
                child: _listProfile(),
              ))
        ],
      ),
    );
  }
  Widget _listProfile(){
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: ListView.builder(
          itemCount: profile.length,
          itemBuilder: (_, index) {
            return InkWell(
              splashColor: Colors.grey,
              onTap: (){
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Container(
                  width: 200,
                  height: 75,
                  decoration: BoxDecoration(color: const Color(0XFF525464),
                      border: Border.all(
                          color: const Color(0XFFE2E2E0),
                          width: 1
                      )
                  ),
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    children: [
                      Container(
                        width: 75,
                        height: 50,
                        decoration: BoxDecoration(color: kSecondaryColor.withOpacity(0),
                            border: const Border(
                              right: BorderSide(
                                color: Color(0XFFE2E2E0),
                                width: 1,
                              )
                            )
                        ),
                        child: Icon(profile[index].icons,size: 24,color: const Color(
                            0xFFFFB19D)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(profile[index].name,style: const TextStyle(fontSize: 14,
                              color: Colors.white54,
                              fontFamily: "Muli"),),
                            Text(profile[index].title,style: const TextStyle(fontSize: 16,
                              color: Color(0xffFFFFFF),
                              fontFamily: "Muli",
                              fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
  // Widget _buildImages(){
  //   const images =  NetworkImage("assets/images/Profile Image.png");
  //   return ClipOval(
  //     child: Material(
  //       child: Ink.image(
  //         image: images,
  //         fit: BoxFit.cover,
  //         width: 145,
  //         height: 145,
  //         child: InkWell(
  //           onTap: (){
  //           },
  //         ) ,
  //       ),
  //     ),
  //   );
  // }
}
