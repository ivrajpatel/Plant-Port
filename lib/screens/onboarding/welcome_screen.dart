import 'package:flutter/material.dart';
import 'package:plant_port/bottombar.dart';
import 'package:plant_port/screens/authentication/loginscreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 17, right: 00),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 74,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 58,
                  color: Color(0xFF129C52)),
            ),
            Stack(
              children: [
                Text(
                  "We’re glad that you\nare here!",
                  style: TextStyle(fontSize: 20, color: Color(0xFF129C52)),
                ),
                Image(
                    image: AssetImage(
                        "assets/images/Pepper face plant in a small pot.png")),
                Positioned(
                  bottom: 4,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  LoginScreen()));
                    },
                    child: Container(
                      height: 40,
                      width: 327,
                      child: Center(
                          child: Text(
                        "Let’s get started",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                          color: Color(0xFF129C52),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
