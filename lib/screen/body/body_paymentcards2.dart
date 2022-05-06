
import 'package:designapp/models/paycards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Paycards? paycard;
   Body({Key? key, this.paycard}) : super(key: key);

  @override
  State<Body> createState() => _BodyState( paycard:paycard);
}

class _BodyState extends State<Body> {
  Paycards? paycard;

  _BodyState({this.paycard});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,right: 30),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: _payCards()),
          Expanded(
            flex: 4,
            child: _cardNumber(),
          ),
          Expanded(
            flex: 1,
            child: _buttonAddcards(),
          )
        ],
      ),
    );
  }

  Widget _payCards() {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Stack(
        children: [
          SizedBox(
            height: 220,
            width: double.infinity,
            child: Image.asset(
              "assets/images/Rectangle.png",
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: 20,
              left: 20,
              child: Row(
                children:[
                  Text(paycard!.numbercard,
                      style: const TextStyle(
                        fontSize: 15.33,
                        color: Colors.white,
                        fontFamily: "Muli",
                      )),
                ],
              )),
          Positioned(
              top: 20,
              right: 20,
              child: Row(
                children: [
                  Text(paycard!.date,
                      style: const TextStyle(
                        fontSize: 15.33,
                        color: Colors.white,
                        fontFamily: "Muli",
                      )),
                ],
              )),
          Positioned(
              bottom: 40,
              left: 20,
              child: Row(
                children: [
                  Text(
                    paycard!.money,
                    style: const TextStyle(
                        fontSize: 24.92,
                        color: Colors.white,
                        fontFamily: "Muli"),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Widget _cardNumber() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Card Number",
            style: TextStyle(
                fontFamily: "Muli",
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color(0XFF525464)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                height: 60,
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0xffF7F7F7)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Text(paycard!.numbercard,
                      style: const TextStyle(
                          fontFamily: "Muli",
                          fontSize: 16.0,
                          color: Color(0xffB0B0C3))),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 68, top: 20),
            child: Text("Exp.Month      Exp.Year        CVV",
                style: TextStyle(
                    fontFamily: "Muli",
                    color: Color(0xff525464),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Container(
                    color: const Color(0xffF7F7F7),
                    height: 60,
                    width: 110,
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: const [
                        Text("07",
                            style: TextStyle(
                                fontFamily: "Muli",
                                fontSize: 16.0,
                                color: Color(0xffB0B0C3))),
                        SizedBox(
                          width: 34,
                        ),
                        Icon(Icons.arrow_drop_down,color: Color(0xff525464)),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                      color: const Color(0xffF7F7F7),
                      height: 60,
                      width: 110,
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: const [
                          Text("2022",
                              style: TextStyle(
                                  fontFamily: "Muli",
                                  fontSize: 16.0,
                                  color: Color(0xffB0B0C3))),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(Icons.arrow_drop_down,color: Color(0xff525464),),
                        ],
                      )),
                ),
                Container(
                    color: const Color(0xffF7F7F7),
                    height: 60,
                    width: 110,
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: const [
                        Text("***",
                            style: TextStyle(
                                fontFamily: "Muli",
                                fontSize: 16.0,
                                color: Color(0xffB0B0C3))),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.arrow_drop_down,color: Color(0xff525464)),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttonAddcards() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
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
              "Save card",
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
