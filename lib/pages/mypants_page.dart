import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../screens/care_guide/plants_myplants.dart';
import '../screens/care_guide/sites_myplants.dart';
import '../screens/explore/plants_screen.dart';
import '../screens/explore/trees_screen.dart';
import '../screens/setting_screen.dart';

class MypantsPage extends StatefulWidget {
  const MypantsPage({super.key});

  @override
  State<MypantsPage> createState() => _MypantsPageState();
}

class _MypantsPageState extends State<MypantsPage>
    with SingleTickerProviderStateMixin {
  late TabController myplantstabController;
  @override
  void initState() {
    super.initState();
    myplantstabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    myplantstabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF129C52),
        title: Text("My Plants",
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(SettingScreen());
              },
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.white,
              )),
        ],
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          dividerHeight: 0,
          controller: myplantstabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.white,
          tabs: [
            Tab(text: 'Plants'),
            Tab(text: 'Sites'),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: myplantstabController,
              children: [
                PlantsMyplants(),
                SitesMyplants(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
