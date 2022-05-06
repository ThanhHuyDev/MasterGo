import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../sigin/sigin_2.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView.builder(
              controller: _pageController,
              itemCount: demo_data.length,
              onPageChanged: (index) {
                setState(() {
                  _pageIndex = index;
                });
              },
              itemBuilder: (context, index) => SplashContent(
                  name: demo_data[index].name,
                  title: demo_data[index].title,
                  image: demo_data[index].image),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 180, bottom: 50),
                  child: Row(
                    children: [
                      ...List.generate(
                          demo_data.length, (index) => buildDot(index: index)),
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {
                      if (_pageIndex < demo_data.length - 1) {
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignIn(),
                        //  ),
                        // );
                        // Navigator.pushNamed(context, SignIn.routeName);
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease);
                      }
                    },
                    child: _pageIndex == demo_data.length - 1
                        ? SizedBox(
                            height: 70,
                            width: 70,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_pageIndex == demo_data.length - 1) {
                                  Navigator.pushNamed(
                                      context, SignIn.routeName);
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  primary: const Color(0xFF20C3AF)),
                              child: SvgPicture.asset(
                                "assets/icons/Plus Icon.svg",
                                width: 20,
                                height: 20,
                                color: Colors.white,
                              ),
                            ),
                          )
                        : Container(
                            height: 60,
                            margin: const EdgeInsets.symmetric(horizontal: 30),
                            color: const Color(0xFF20C3AF),
                            child: const Center(
                              child: Text(
                                "Next",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          )),
              ],
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: _pageIndex == index ? 15 : 6,
      decoration: BoxDecoration(
        color: _pageIndex == index
            ? const Color(0XFFB5C3C7)
            : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class Splash {
  final String name, title, image;
  Splash({required this.name, required this.title, required this.image});
}

final List<Splash> demo_data = [
  Splash(
      name: "Proven specialists",
      title: "We check each specialist before he start work",
      image: 'assets/images/onloading1.png'),
  Splash(
      name: "Honest ratings",
      title: "We carefully check each specialist and put honest ratings",
      image: 'assets/images/onloading2.png'),
  Splash(
      name: "Insured orders",
      title: "We insure each order for the amount of \$500",
      image: 'assets/images/onloading3.png'),
  Splash(
      name: "Create order",
      title: "It's easy, just click on the plus",
      image: 'assets/images/onloading4.png'),
];

class SplashContent extends StatelessWidget {
  const SplashContent(
      {Key? key, required this.name, required this.image, required this.title})
      : super(key: key);

  final String name, title, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 40),
            child: Text(name,
                style: const TextStyle(
                    fontSize: 40, color: Color(0xFF525464), fontFamily: "Muli"),
                textAlign: TextAlign.center),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 38, left: 68, right: 68, bottom: 38),
            child: Image.asset(
              image,
              height: 285,
              width: 238,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontFamily: "Muli"),
            ),
          ),
        ],
      ),
    );
  }
}
