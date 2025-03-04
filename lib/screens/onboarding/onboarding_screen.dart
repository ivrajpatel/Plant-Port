import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_port/screens/onboarding/welcome_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  _OnboardingScreen createState() => _OnboardingScreen();
}

class _OnboardingScreen extends State<OnBoardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: 10.0,
      width: isActive ? 10.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF129C52) : Colors.green.shade50,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 00.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 640,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              top: 80,
                              left: 17,
                              child: Center(
                                child: Image(
                                  image: AssetImage("assets/images/OB1.png"),
                                  height: 326,
                                  width: 326,
                                ),
                              ),
                            ),
                            Image(
                                image: AssetImage("assets/images/Shapeob1.png"))
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, right: 17),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Never Kill a Plant\nAgain!',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                ),
                              ),
                              SizedBox(height: 26.0),
                              Text(
                                'We will send you reminders for everything related to plant care',
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Image(
                                image:
                                AssetImage("assets/images/Shapeob2.png")),
                            Positioned(
                              top: 80,
                              left: 17,
                              child: Center(
                                child: Image(
                                  image: AssetImage("assets/images/OB2.png"),
                                  height: 326,
                                  width: 326,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, right: 17),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Scan to know your\nPlants',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                ),
                              ),
                              SizedBox(height: 26.0),
                              Text(
                                'Scan your plants and or browse through plant library to create you digital garden',
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Image(
                                image:
                                AssetImage("assets/images/Shapeob3.png")),
                            Positioned(
                              top: 80,
                              left: 17,
                              child: Center(
                                child: Image(
                                  image: AssetImage("assets/images/OB3.png"),
                                  height: 326,
                                  width: 326,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, right: 17),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Learn more about\nPlants',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                ),
                              ),
                              SizedBox(height: 26.0),
                              Text(
                                'Learn more about plants health and care guide.',
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 55,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 54,
                      child: Row(
                        children: _buildPageIndicator(),
                      ),
                    ),
                    _currentPage != _numPages - 0
                        ? TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        _currentPage != _numPages - 1
                            ? _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        )
                            : Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    WelcomeScreen()));
                      },
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 78,
                            decoration: BoxDecoration(
                                color: Color(0xFF129C52),
                                borderRadius:
                                BorderRadius.circular(100)),
                            child: Center(
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                        : GestureDetector(
                      onTap: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 78,
                        decoration: BoxDecoration(
                            color: Color(0xFF129C52),
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                            child: Text("Next",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
