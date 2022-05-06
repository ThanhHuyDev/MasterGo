import 'package:flutter/material.dart';
import '../body/body_order_products.dart';
class OdersProgress extends StatelessWidget {
  static const String routeName = '/OrderProgress';
  const OdersProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(context),
      body: const Body(),
    );
  }
  AppBar _appBar(BuildContext context){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      title: const Text("Oders in progress",style: TextStyle(color: Colors.black,fontFamily: "Muli",fontSize: 20),),
      leading: IconButton(icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),onPressed: (){
        Navigator.pop(context);
      },),
      actions: [
        IconButton(icon: const Icon(Icons.segment_outlined,color: Colors.black,),onPressed: (){
        },),
      ],
    );
  }
}

