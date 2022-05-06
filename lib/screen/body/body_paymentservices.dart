import 'package:designapp/models/payments.dart';
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
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30,top: 30),
      child: Column(
        children: [
          Expanded(flex: 4, child: _listPayments()),
          Expanded(flex: 3, child: _textTotal()),
          Expanded(flex: 2, child: _buttonCheckout())
        ],
      ),
    );
  }

  Widget _listPayments() {
    return ListView.builder(
        itemCount: payments.length,
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {},
            splashColor: Colors.grey,
            child: Container(
              height: 90,
              width: 380,
              child: Row(
                children: [
                  Image.asset(payments[index].image, height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      payments[index].name,
                      style:
                          const TextStyle(fontFamily: "Muli", fontSize: 16.0),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    payments[index].money,
                    style: const TextStyle(
                        fontFamily: "Muli",
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget _buttonCheckout() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/CustomerInfo");
            },
            child: Container(
              height: 70,
              width: double.infinity,
              color: const Color(0xFF20C3AF),
              child: const Center(
                child: Text(
                  "Checkout",
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
          const SizedBox(
            height: 20,
          ),
          const Text("Continue Shopping",
              style: TextStyle(
                  fontSize: 16.0,
                  color: kPrimaryColor,
                  fontFamily: "Muli",
                  decoration: TextDecoration.underline))
        ],
      ),
    );
  }

  Widget _textTotal() {
    return Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: Container(
                width: 360,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Colors.black12))),
              )),
          Row(
            children: const [
              Text("Total:",
                  style: TextStyle(fontFamily: "Muli", fontSize: 16.0)),
              Spacer(),
              Text("\$105",
                  style: TextStyle(
                      fontFamily: "Muli",
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ],
    );
  }
}
