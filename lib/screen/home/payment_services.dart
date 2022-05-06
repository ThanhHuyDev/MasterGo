import 'package:flutter/material.dart';
import '../body/body_paymentservices.dart';

class PaymentServices extends StatelessWidget {
  static const String routeName = '/PaymentServices';
  const PaymentServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Payment for services",style: TextStyle(color: Colors.black,fontFamily: "Muli",fontSize: 20),),
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

