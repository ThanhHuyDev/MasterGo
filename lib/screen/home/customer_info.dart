import 'package:flutter/material.dart';
import '../body/body_customerinfo.dart';

class CustomerInfo extends StatelessWidget {
  static const String routeName = '/CustomerInfo';
  const CustomerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Customer info",style: TextStyle(color: Colors.black,fontFamily: "Muli",fontSize: 20),),
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),onPressed: (){
          Navigator.pop(context);
        },),
        actions: [
          IconButton(icon: const Icon(Icons.segment_outlined,color: Colors.black,),onPressed: (){
          },),
        ],
      ),
      body: const Body(),
    );
  }
}

