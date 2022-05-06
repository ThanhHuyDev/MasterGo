import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/product.dart';

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
        Expanded(flex: 7, child: _listProducts()),
        Expanded(
            flex: 1, child: _buttonProducts())
      ],
    );
  }

  Widget _listProducts() {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 10),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 3/5.5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: products.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: (){
              },
              splashColor: Colors.grey,
              child: Column(
                children: [
                  Container(
                      width: 170,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image.asset(products[index].image)),
                  const SizedBox(height: 10,),
                  Text(products[index].name,style: const TextStyle(color:Color(0XFF525464),fontSize: 16.0,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  Text(products[index].money,style: const TextStyle(fontSize: 16.0,color: Color(0xFFB0B0C3)),),
                ],
              ),
            );
          }),
    );
  }

  Widget _buttonProducts() {
    return Padding(
      padding: const EdgeInsets.only(left: 36,right: 36,bottom: 10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/ConstructionWork");
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
                    "Archive",
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
                Navigator.pushNamed(context, "/ConstructionWork");
              },
              child: Container(
                height: 60,
                width: double.infinity,
                color: const Color(0xFF20C3AF),
                child: const Center(
                  child: Text(
                    "In work",
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
      ),
    );
  }
}
