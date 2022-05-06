import 'package:designapp/constants.dart';
import 'package:designapp/screen/home/payment_card2.dart';
import 'package:flutter/material.dart';

import '../../models/paycards.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
      child: Column(
        children: [
          Expanded(
            flex: 13,
            child: _listPaycards(),
          ),
          Expanded(
            flex: 2,
            child: _buttonAddcards(),
          )
        ],
      ),
    );
  }

  Widget _listPaycards() {
    return ListView.builder(
          itemCount: paycards.length,
          itemBuilder: (_, index) {
            Paycards pay = paycards[index];
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PaymentCards2(paycard: pay)));
                },
                splashColor: Colors.grey,
                child: Container(
                  width: 380,
                  height: 100,
                  decoration:BoxDecoration(
                    border: Border.all(color: const Color(0xFFE2E2E0),width: 1),
                  ),
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: [
                      Stack(
                        children:[
                            Image.asset(paycards[index].image,
                          height: 50,
                        ),
                          Positioned(
                            top: 10,
                              left: 10,
                              child: Text(paycards[index].numbercard,style: const TextStyle(
                                  color:Color(0xFFFFFFFF),
                                  fontSize: 3.17,
                                  fontFamily: "Muli"),)),
                          Positioned(
                              top: 10,
                              right: 10,
                              child: Text(paycards[index].date,style: const TextStyle(
                                  color:Color(0xFFFFFFFF),
                                  fontSize: 3.17,
                                  fontFamily: "Muli"),)),
                          Positioned(
                              bottom: 8,
                              left: 10,
                              child: Text(paycards[index].money,style: const TextStyle(
                                  color:Color(0xFFFFFFFF),
                                  fontSize: 8.0,
                                  fontFamily: "Muli"),)),
                        ]
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25,left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(paycards[index].numbercard,
                                style: const TextStyle(
                                    fontFamily: "Muli",
                                    fontSize: 16,
                                    color: Color(0XFF525464))),
                            Text(paycards[index].date,
                                style: const TextStyle(
                                    fontFamily: "Muli",
                                    fontSize: 14,
                                    color: Color(0xff838391))),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        paycards[index].icons,
                        height: 12,
                      )
                    ],
                  ),
                ),
              ),
            );
          }
    );
  }

  Widget _buttonAddcards() {
    return Padding(
      padding: const EdgeInsets.only(top:25),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/PaymentCards');
        },
        child: Container(
          height: 70,
          width: double.infinity,
          color: const Color(0xFF20C3AF),
          child: const Center(
            child: Text(
              "Add new card",
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


