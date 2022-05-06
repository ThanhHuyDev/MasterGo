
import 'package:flutter/material.dart';

import '../../constants.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 13,
          child: _listSettings(),),
        Expanded(
          flex: 10,
          child: _textLogout(),)
      ],
    );
  }

  Widget _listSettings() {
    return Padding(
      padding: const EdgeInsets.only(top: 30,left: 20,right: 20,bottom: 20),
      child: ListView.builder(
          itemCount: itemSettings.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(top:10),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/PaymentCards");
                },
                splashColor: Colors.grey,
                child: Container(
                  color: const Color(0xffF7F7F7),
                  width: 380,
                  height: 84,
                  padding: const EdgeInsets.only(left: 30,right: 20),
                  child: Row(
                    children: [
                      Text(itemSettings[index].name,style: const TextStyle(color: kColorText,fontSize: 16.0,fontFamily: "Muli"),),
                      const Spacer(),
                      const Icon(Icons.navigate_next,color: Color(0xff525464),size: 30,)
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
  Widget _textLogout() {
    return Padding(
      padding: const EdgeInsets.only(right: 270),
      child: GestureDetector(
        onTap: (){
        },
        child: const Text("Log Out",style: TextStyle(color: Color(0xffFFB19D),fontSize: 16.0,fontFamily: "Muli",decoration: TextDecoration.underline),),
      ),
    );
  }

}
  class Settings {
  String name;
  Settings({required this.name});
  }
  final List<Settings> itemSettings = [
    Settings(name: "Payment cards"),
    Settings(name: "Write to us"),
    Settings(name: "Rate us on app store"),
    Settings(name: "About Us"),
  ];

