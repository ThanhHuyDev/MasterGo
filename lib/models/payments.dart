import 'package:flutter/material.dart';
class Payment{
  String image;
  String name;
  String money;
  Payment({required this.name,required this.image,required this.money});
}
List<Payment> payments = [
  Payment(name: "Welding works", image: "assets/images/image_service1.png", money: "\$40"),
  Payment(name: "Foundation works", image: "assets/images/image_service2.png", money: "\$55"),
  Payment(name: "Waterproofing", image: "assets/images/image_service3.png", money: "\$20"),
];