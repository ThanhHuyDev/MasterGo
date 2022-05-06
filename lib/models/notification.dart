import 'package:flutter/material.dart';
class Notification{
  String name;
  String address;
  String comment;
  String icons;
  Notification({required this.name,required this.icons,required this.address,required this.comment});
}
List<Notification> notifications = [
  Notification(name: "Joel Rowe",
      icons: "assets/images/avt_notifi1.png",
      address: "Bitrow Company",
      comment: "Sorry, all the artists in the Interior Design category are busy right now.If your task is still relevant - go to the task details page and click Extend task."),
  Notification(name: "Cole Payne",
      icons: "assets/images/avt_notifi2.png",
      address: "Corporation Kraton",
      comment: "We have dound a contractor for your task Cleaning services. Please see the details."),
  Notification(name: "Elva Stone",
      icons: "assets/images/avt_notifi3.png",
      address: "Grand Service Company",
      comment: "David Comleman is ready to complete your assignment and get started soon! View David's profile and carefully review the order details. Then confirm the order. "),
  Notification(name: "Joel Rowe",
      icons: "assets/images/avt_notifi1.png",
      address: "Bitrow Company",
      comment: "Sorry, all the artists in the Interior Design category are busy right now.If your task is still relevant - go to the task details page and click Extend task."),
  Notification(name: "Cole Payne",
      icons: "assets/images/avt_notifi2.png",
      address: "Corporation Kraton",
      comment: "We have dound a contractor for your task Cleaning services. Please see the details."),
  Notification(name: "Elva Stone",
      icons: "assets/images/avt_notifi3.png",
      address: "Grand Service Company",
      comment: "David Comleman is ready to complete your assignment and get started soon! View David's profile and carefully review the order details. Then confirm the order. "),
];