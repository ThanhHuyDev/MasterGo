import 'package:flutter/material.dart';
class Profile{
  String name;
  String title;
  IconData icons;
  Profile({required this.name,required this.icons,required this.title});
}
List<Profile> profile = [
  Profile(name: "Phone number", icons: Icons.phone, title: "+3746589923"),
  Profile(name: "Email", icons: Icons.email, title: "conrad@gmail.com"),
  Profile(name: "Completed projects", icons: Icons.water_damage, title: "248"),
];