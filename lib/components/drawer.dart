
import 'package:designapp/components/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
          color: const Color(0xff525464),
          child: Padding(
            padding: const EdgeInsets.only(top: 140),
            child: Column(
              children: [
                DrawerItem(
                    name: "Home",
                    icons: Icons.home,
                    onpressed: ()=>onItemPressed(context, index: 0)),
                DrawerItem(
                    name: "Profile",
                    icons: Icons.supervised_user_circle,
                    onpressed: ()=>onItemPressed(context, index: 1)),
                DrawerItem(
                    name: "Settings",
                    icons: Icons.settings,
                    onpressed: ()=>onItemPressed(context, index: 2)),
                DrawerItem(
                    name: "Messages",
                    icons: Icons.email,
                    onpressed: ()=>onItemPressed(context, index: 3)),
              ],
            ),
          ),
        ),
    );
  }
  void onItemPressed(BuildContext context,{required int index}){
    Navigator.pop(context);
    switch(index){
      case 0:
        Navigator.pushNamed(context, "/Home");
        break;
      case 1:
        Navigator.pushNamed(context, '/Profile');
        break;
      case 2:
        Navigator.pushNamed(context, '/Settings');
        break;
      case 3:
        Navigator.pushNamed(context, '/Notification');
        break;
      default:
        Navigator.pop(context);
        break;
    }
  }
}