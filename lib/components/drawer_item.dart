import 'package:flutter/material.dart';
class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key,required this.name,required this.icons,required this.onpressed}) : super(key: key);

  final String name;
  final IconData icons;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            SizedBox(
              height: 72,
              width: 72,
              child: CircleAvatar(
                  child: Icon(icons,color: Colors.white,),
                  backgroundColor: const Color(0xff323440)),
            ),
            const SizedBox(height: 8,),
            Text(name,style: const TextStyle(fontSize: 16.0,color: Colors.white,fontFamily: "Muli"),)
          ],
        ),
      ),
    );
  }
}
