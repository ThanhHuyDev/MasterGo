import 'package:designapp/screen/home/category.dart';
import 'package:designapp/screen/home/construction_work.dart';
import 'package:designapp/screen/home/customer_info.dart';
import 'package:designapp/screen/home/notification.dart';
import 'package:designapp/screen/home/orders_products.dart';
import 'package:designapp/screen/home/payment_card.dart';
import 'package:designapp/screen/home/payment_card2.dart';
import 'package:designapp/screen/home/payment_services.dart';
import 'package:designapp/screen/home/profile.dart';
import 'package:designapp/screen/home/settings.dart';
import 'package:designapp/screen/sigin/sigin_2.dart';
import 'package:designapp/screen/sigup/sigup_2.dart';
import 'package:designapp/screen/splash/splash_2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/Sign_in': (context)=>const SignIn(),
          '/Sign_up': (context)=>const SignUp(),
          '/Home': (context)=>const Home(),
          '/Plash': (context)=>const SplashScreen(),
          '/Profile': (context)=>const Profile(),
          '/Notification': (context)=>const Notifications(),
          '/Ordersgrogress': (context)=>const OdersProgress(),
          '/ConstructionWork': (context)=>const ConstructionWork(),
          '/PaymentServices': (context)=>const PaymentServices(),
          '/CustomerInfo': (context)=>const CustomerInfo(),
          '/Settings': (context)=>const Settings(),
          '/PaymentCards': (context)=>const PaymentCards(),
          '/PaymentCards2': (context)=>PaymentCards2(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter App',
        theme: ThemeData(),
        home: const Home());
  }
}