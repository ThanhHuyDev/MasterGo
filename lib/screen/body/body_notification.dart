import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/notification.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30,left: 30),
      child: Column(
        children: [
          Expanded(
              flex: 6,
              child: _listNotification()),
          Expanded(
            flex: 1,
            child: _buttonViewall())
        ],
      ),
    );
  }
  Widget _listNotification(){
    return ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context ,index){
          return InkWell(
            onTap: (){},
            splashColor: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                padding: const EdgeInsets.only(right: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Material(
                            color: Colors.transparent,
                            child: Image.asset(notifications[index].icons,
                              fit: BoxFit.cover,
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                    Text(notifications[index].name,style: const TextStyle(fontSize: 16,fontFamily: "Muli",color: Color(0xff525464),fontWeight: FontWeight.bold)),
                                    Text(notifications[index].address,style: const TextStyle(fontSize: 14,fontFamily: "Muli",color: Color(
                                        0xFF838391)),),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 25,),
                    Text(notifications[index].comment,style: const TextStyle(fontSize: 14,color: Color(0XFF616173),fontFamily: "Muli"),),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 333,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54.withOpacity(0.12),width: 0.3)
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
  Widget _buttonViewall(){
    return Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 20),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, '/Ordersgrogress');
        },
        child: Container(
          height: 70,
          width: double.infinity,
          color: const Color(0xFF20C3AF),
          child: const Center(
            child: Text(
              "View all",
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
    );
  }
}
