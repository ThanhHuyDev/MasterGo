class Paycards {
  String image;
  String numbercard;
  String date;
  String money;
  String icons;

  Paycards(
      {required this.image,
        required this.numbercard,
        required this.date,
        required this.icons,
        required this.money});
}

final List<Paycards> paycards = [
  Paycards(
      image: "assets/images/Card2.png",
      numbercard: "*** *** *** 3872",
      date: "17/2020",
      money: "\$ 25,388",
      icons: "assets/images/visa.png"),
  Paycards(
      image: "assets/images/Card2.png",
      numbercard: "*** *** *** 2873",
      date: "07/2022",
      money: "\$ 34,880",
      icons: "assets/images/visa.png"),
  Paycards(
      image: "assets/images/Card3.png",
      numbercard: "*** *** *** 3212",
      date: "10/2024",
      money: "\$ 9,568",
      icons: "assets/images/mastercard-2.png"),
  Paycards(
      image: "assets/images/Card4.png",
      numbercard: "*** *** *** 3412",
      date: "12/2024",
      money: "\$ 41,563",
      icons: "assets/images/visa.png"),
];