import 'package:designapp/models/categories.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height*0.89),
        child: _categoriesBody(context),
      ),
    );
  }
  Widget _categoriesBody(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _searchBycategories(),
          const SizedBox(height:50),
          Expanded(
              flex: 14,
              child: _listCategories()),
          Expanded(
              flex: 3,
              child: _buttonCategories(context))
        ],
      ),
    );
  }
  Widget _searchBycategories(){
    return Container(
      width: 380,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: 80,
                vertical: 22),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search by category",hintStyle: TextStyle(fontFamily: 'Muli'),
            prefixIcon: Icon(Icons.search,color: Colors.lightBlue,)),
      ),
    );
  }
  Widget _listCategories(){
    return ListView.builder(
        itemCount: categories.length,
        itemBuilder: (_, index) {
          return InkWell(
            splashColor: Colors.grey,
            onTap: (){
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Container(
                width: 380,
                height: 88,
                decoration: BoxDecoration(color: kSecondaryColor.withOpacity(0.05),
                  border: Border.all(
                    color: Colors.black12,
                    width: 2
                  )
                ),
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Container(
                        color: kSecondaryColor.withOpacity(0.4),
                        width: 100,
                        height: 88,
                        child: Icon(categories[index].icons,size: 30,color: kPrimaryColor,)),
                    const Spacer(),
                    Text(categories[index].name,style: const TextStyle(fontSize: 20,
                      color: Colors.black54,
                      fontFamily: "Muli",
                      fontWeight: FontWeight.bold,),),
                    const Spacer(),
                    const Icon(Icons.navigate_next,color: Colors.black,size: 30,),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
  Widget _buttonCategories(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 80,right: 80),
      child: Row(
        children: [
          OutlinedButton(onPressed: (){},
            style: OutlinedButton.styleFrom(
                minimumSize: const Size(100, 60),
                padding: const EdgeInsets.only(bottom: 7),
                side: const BorderSide(color: Colors.black38)
            ),
              child:const Text(
              "Back",
              style: TextStyle(
                fontSize: 20,color: Colors.black54,
                fontFamily: "Muli",),),),
          const Spacer(),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/Profile");
          },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(100, 60),
                padding: const EdgeInsets.only(bottom: 7),
                primary: kPrimaryColor1
            ),
            child: const Text(
              "Next",
              style: TextStyle(
                  fontSize: 20,color: Colors.white,fontFamily: "Muli",
                  fontWeight: FontWeight.bold),),)
        ],
      ),
    );
  }
}
