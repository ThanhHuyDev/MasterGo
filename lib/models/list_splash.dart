import 'package:flutter/material.dart';
class SplashCreen{
  String id;
  String image;
  String name;
  String title;
  SplashCreen(
      {required this.id,
        required this.image,
        required this.name,
        required this.title});
  static List<SplashCreen> list_splashcreen = [
    SplashCreen(id: "1",
        image: 'assets/images/splash1.png',
        name:  "Proven specialists",
        title: "We check each specialist before he start work"),
    SplashCreen(id: "2",
        image: 'assets/images/splash1.png',
        name:  "Honest ratingsUI",
        title: "We carefully check each specialist and put honest ratings"),
    SplashCreen(id: "3",
        image: 'assets/images/splash1.png',
        name:  "Insured ordersUI",
        title:  "We insure each order for the amount of 500s"),
    SplashCreen(id: "4",
        image: 'assets/images/splash1.png',
        name:  "Create orderUI",
        title: "It's easy, just click on the plus.. wellcome to Rikai tecnogoly"),
    ];
}