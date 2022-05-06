import 'package:flutter/material.dart';

import '../../constants.dart';
import '../models/construction.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 30),
      child: Column(
        children: [
          _searchBycategoriesWork(),
          Expanded(flex: 4, child: _listConstructionWork()),
          Expanded(flex: 1, child: _buttonConstruction())
        ],
      ),
    );
  }

  Widget _searchBycategoriesWork() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20  ),
      child: Container(
        width: 380,
        decoration: BoxDecoration(
          color: kSecondaryColor.withOpacity(0.15),
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          onChanged: (value) => print(value),
          decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 80, vertical: 22),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: "Search by category",
              hintStyle: TextStyle(fontFamily: 'Muli'),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.lightBlue,
              )),
        ),
      ),
    );
  }

  Widget _listConstructionWork() {
    return ListView.builder(
        itemCount: constructions.length,
        itemBuilder: (_, index) {
          return InkWell(
            onTap: (){},
            splashColor: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                height: 86,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.01),
                    border: Border.all(
                        color: Colors.black12.withOpacity(0.05), width: 1)),
                child: Row(
                  children: [
                    Text(constructions[index].name,style: const TextStyle(fontSize: 20,fontFamily: "Muli"),),
                    const Spacer(),
                    Container(
                      height: 86,
                        width: 86,
                        decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.08),
                            border: Border.all(
                                color: Colors.black12.withOpacity(0.05), width: 1)),
                        child: Icon(constructions[index].icons))
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget _buttonConstruction() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15,top: 20),
      child: Row(
        children: [
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                minimumSize: const Size(160, 70),
                padding: const EdgeInsets.only(bottom: 7),
                side: const BorderSide(color: Colors.black38)),
            child: const Text(
              "Skip",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black45,
                fontFamily: "Muli",
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
                Navigator.pushNamed(context, "/PaymentServices");
            },
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(160, 70),
                padding: const EdgeInsets.only(bottom: 7),
                primary: kPrimaryColor1),
            child: const Text(
              "Done",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: "Muli",
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
