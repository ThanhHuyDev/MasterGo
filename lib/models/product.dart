import 'package:flutter/material.dart';

class Product{
  String image;
  String name;
  String money;
  Product({required this.name,required this.image,required this.money});
}
List<Product> products = [
  Product(name: "Balcony repair", image: "assets/images/image_oder1.png", money: "\$24"),
  Product(name: "Redecorating", image: "assets/images/image_oder2.png", money: "\$60"),
  Product(name: "Painting works", image: "assets/images/image_oder3.png", money: "\$42"),
  Product(name: "Interior design", image: "assets/images/image_oder4.png", money: "\$54"),
  Product(name: "Play game to Table", image: "assets/images/image_oder5.png", money: "\$47"),
  Product(name: "Shorts Well", image: "assets/images/image_oder6.png", money: "\$80"),
];