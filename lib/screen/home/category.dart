import 'package:flutter/material.dart';
import '../body/body_category.dart';
class Home extends StatelessWidget {
  static const String routeName = '/Home';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Categories",style: TextStyle(color: Colors.black,fontFamily: 'Muli')),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios,color: Colors.black), onPressed: () {
          Navigator.pop(context);
        },),
        actions: [
          IconButton(icon: const Icon(Icons.segment_outlined,color: Colors.black), onPressed: () {  },iconSize: 30),
        ],
      ),
      body: Body(),
    );
  }
}
