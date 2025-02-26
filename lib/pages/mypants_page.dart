import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferences;

import '../loginscreen.dart';

class MypantsPage extends StatefulWidget {
  const MypantsPage({super.key});

  @override
  State<MypantsPage> createState() => _MypantsPageState();
}

class _MypantsPageState extends State<MypantsPage> {
  String? _userId;
  @override
  void initState() {
    super.initState();
    _loadUserDetails();
  }

  Future<void> _loadUserDetails() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? userId = prefs.getString('email');

    setState(() {
      _userId = userId;
    });
  }

  Future<void> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('email');
    await prefs.remove('password');

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.pinkAccent,
          ),
          Center(
            child: ElevatedButton(
                onPressed: logout,
                child: Container(
                  height: 45,
                  width: 100,
                  child: Center(
                      child: Text(
                    "Log Out",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  )),
                  decoration: BoxDecoration(
                      // border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(15)),
                )),
          ),
        ],
      ),
    );
  }
}
