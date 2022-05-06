import 'package:flutter/material.dart';

class Construction {
  String name;
  IconData icons;
  Construction({required this.name,required this.icons});
}
List<Construction> constructions = [
  Construction(name: "Welding works", icons: Icons.add),
  Construction(name: "Foundation works", icons: Icons.add),
  Construction(name: "Roofing", icons: Icons.add),
  Construction(name: "Waterproofing", icons: Icons.add),
  Construction(name: "Architecture", icons: Icons.add),
  Construction(name: "Design", icons: Icons.add),
];