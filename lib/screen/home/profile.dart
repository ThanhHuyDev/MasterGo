import 'package:designapp/components/drawer.dart';
import 'package:flutter/material.dart';

import '../body/body_profile.dart';
class Profile extends StatelessWidget {
  static const String routeName = '/Profile';
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F2F2),
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Profile",style: TextStyle(color: Colors.black,fontFamily: "Muli",fontSize: 20),),
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),onPressed: (){
          Navigator.pop(context);
        },),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(icon: const Icon(Icons.segment_outlined,color: Colors.black,),onPressed: (){
                Scaffold.of(context).openDrawer();
              },);
            }
          ),
        ],
      ),
      body: const Body(),
      drawer: const DrawerMenu(),
    );
  }
}

