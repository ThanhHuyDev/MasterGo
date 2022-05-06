import 'package:flutter/material.dart';
class Categories{
  String name;
  IconData icons;
  Categories({required this.name,required this.icons});
}
List<Categories> categories = [
  Categories(name: "Fumiture works", icons: Icons.account_balance_sharp),
  Categories(name: "Cleaning services", icons:Icons.cleaning_services),
  Categories(name: "Equipment repair", icons:Icons.settings),
  Categories(name: "Courier services", icons:Icons.print),
  Categories(name: "Interior design", icons:Icons.add_chart),
];