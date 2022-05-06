import 'package:flutter/material.dart';
import 'package:designapp/screen/body/body_paymentcards2.dart';
import '../../models/paycards.dart';
class PaymentCards2 extends StatelessWidget {
  Paycards? paycard;
  static const String routeName = '/PaymentCards';
  PaymentCards2({Key? key,this.paycard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Payment cards",style: TextStyle(color: Colors.black,fontFamily: "Muli",fontSize: 20),),
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),onPressed: (){
          Navigator.pop(context);
        },),
        actions: [
          IconButton(icon: const Icon(Icons.segment_outlined,color: Colors.black,),onPressed: (){
          },),
        ],
      ),
      body: Builder(
        builder: (context) {
          return Body(paycard: paycard,);
        }
      ),
    );
  }
}

