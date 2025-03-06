import 'package:flutter/material.dart';
import 'package:plant_port/screens/explore/plants_screen.dart';

import '../screens/explore/trees_screen.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF129C52),
        elevation: 0,
        title: Text('Explore',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              icon:
              Icon(Icons.notifications_none_outlined, color: Colors.black),
              onPressed: () {})
        ],
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          dividerHeight: 0,
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.white,
          tabs: [
            Tab(text: 'Plants'),
            Tab(text: 'Trees'),
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
              controller: _tabController,
              children: [
                PlantGrid(),
                TreesGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
