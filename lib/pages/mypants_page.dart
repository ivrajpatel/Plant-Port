import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/setting_screen.dart';


class MypantsPage extends StatefulWidget {
  const MypantsPage({super.key});

  @override
  State<MypantsPage> createState() => _MypantsPageState();
}

class _MypantsPageState extends State<MypantsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "My Plants",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(SettingScreen());
              },
              icon: Icon(Icons.settings_outlined))
        ],
      ),
      body: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}
