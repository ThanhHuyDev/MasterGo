import 'package:designapp/models/construction.dart';
import 'package:flutter/cupertino.dart';
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
    return SingleChildScrollView (
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height*0.89),
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
          child: Column(
            children: [
              _searchByconstructionWork(),
              Expanded(flex: 4, child: _listConstructionWork()),
              Expanded(flex: 1, child: _buttonConstruction())
            ],
          ),
        ),
      ),
    );
  }
  Widget _searchByconstructionWork(){
    return Container(
      margin: const EdgeInsets.only(bottom: 30,),
      width: 380,
      padding: const EdgeInsets.only(left: 10),
      decoration: const BoxDecoration(
        color: Color(0XFFF7F7F7),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: 60,
                vertical: 22),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search by category",hintStyle: TextStyle(fontSize: 16.0,fontFamily: 'Muli'),
            prefixIcon: Icon(Icons.search,color: Color(0XFF525464),)),
      ),
    );
  }

  Widget _listConstructionWork() {
    return ListView.builder(
        itemCount: constructions.length,
        itemBuilder: (_, index) {
          return Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                padding: const EdgeInsets.only(left: 20),
                height: 70,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.01),
                    border: Border.all(
                        color: Colors.black12.withOpacity(0.05), width: 1)),
                child: Row(
                  children: [
                    Text(constructions[index].name,style: const TextStyle(fontSize: 16,fontFamily: "Muli"),),
                    const Spacer(),
                    InkWell(
                      onTap: (){
                      },
                      splashColor: Colors.grey,
                      child: Container(
                        height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: const Color(0XFFF7F7F7),
                              border: Border.all(
                                  color: Colors.black12.withOpacity(0.03), width: 1)),
                          child: Icon(constructions[index].icons)),
                    )
                  ],
                ),
              );
        });
  }

  Widget _buttonConstruction() {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/PaymentServices");
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color:const Color(0xffE2E2E0).withOpacity(0.5),width: 1)
                ),
                child: const Center(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: Color(0xff838391),
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                        fontFamily: "Muli"
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20,),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/PaymentServices");
              },
              child: Container(
                height: 60,
                width: double.infinity,
                color: const Color(0xFF20C3AF),
                child: const Center(
                  child: Text(
                    "Done",
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
          )
        ],
    );
  }
}
