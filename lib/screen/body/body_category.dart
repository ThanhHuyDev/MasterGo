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
      padding: const EdgeInsets.only(left: 30,right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _searchBycategories(),
          const SizedBox(height:50),
          Expanded(
              flex: 10,
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
      margin: const EdgeInsets.only(top:30),
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
  Widget _listCategories(){
    return ListView.builder(
        itemCount: categories.length,
        itemBuilder: (_, index) {
          return InkWell(
            splashColor: Colors.grey,
            onTap: (){
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(color: const Color(0XFFF7F7F7),
                    border: Border.all(
                        color: const Color(0XFFE2E2E0),
                        width: 1
                    )
                ),
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Container(
                        color: const Color(0XFFE2E2E0),
                        width: 80,
                        height: 80,
                        child: Icon(categories[index].icons,size: 30,color: const Color(0XFFFFB19D),)),
                    const Spacer(),
                    Text(categories[index].name,style: const TextStyle(fontSize: 16,
                      color: Colors.black54,
                      fontFamily: "Muli",
                      fontWeight: FontWeight.bold,),),
                    const Spacer(),
                    const Icon(Icons.navigate_next,color: Color(0XFF525464),size: 30,),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
  Widget _buttonCategories(BuildContext context){
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/Profile");
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
                    "Back",
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
                Navigator.pushNamed(context, "/Profile");
              },
              child: Container(
                height: 60,
                width: double.infinity,
                color: const Color(0xFF20C3AF),
                child: const Center(
                  child: Text(
                    "Next",
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
