import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        color: isActive ? Color(0xFF156651) : Colors.grey,
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("assets/images/OB1.png"),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Online Home Store\n     and Furniture',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                          ),
                        ),
                        // SizedBox(height: 30.0),
                        Text(
                          '         Discover all style and budgets of\n furniture, appliances, kitchen, and more\n         from 500+ brands in your hand.',
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 16.0,
                            // fontFamily: 'Raleway',
                          ),
                        ),
                      ],
                    ),
                    Column(

                      children: <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("assets/Delivery.png"),

                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Delivery Right to Your\n           Doorstep',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                          ),
                        ),

                        Text(
                          '  Sit back, and enjoy the convenience of\n our drivers delivering your order to your\n                         doorstep.',
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("assets/GetSupport.png"),

                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Get Support From Our\n         Skilled Team',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                          ),
                        ),

                        Text(
                          "      If our products don't meet your\n expectations, we're available 24/7 to\n                       assist you.",
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 16.0,

                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
