import 'package:flutter/material.dart';

import '../screens/notification_screen.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({super.key});

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  int _currentIndex = 0;
  int selectedIndex = 0;
  bool isMakeFriendsSelected = true;

  final List<Widget> filters = [
    Text("All"),
    Text("Water"),
    Text("Fertilizer"),
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                "Today",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 252,
              decoration: BoxDecoration(color: Colors.green.shade50),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
                child: Column(
                  children: [
                    Container(
                      height: 102,
                      width: 328,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 93,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2.0),
                              child: Image(
                                image: AssetImage("assets/images/Port1.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Wild mint",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/icons/Water Droplets.png"),
                                          height: 24,
                                          width: 24,
                                        ),
                                        Text(
                                          "200 ml",
                                          style: TextStyle(
                                              color: Colors.grey.shade400,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/icons/today.png"),
                                          height: 24,
                                          width: 24,
                                        ),
                                        Text(
                                          "Today",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image:
                                      AssetImage("assets/icons/water.png"),
                                      height: 52,
                                      width: 52,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 102,
                      width: 328,
                      decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          border: Border.all(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 93,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2.0),
                              child: Image(
                                image: AssetImage("assets/images/Port1.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Wild mint",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/icons/Water Droplets.png"),
                                          height: 24,
                                          width: 24,
                                        ),
                                        Text(
                                          "200 ml",
                                          style: TextStyle(
                                              color: Colors.grey.shade400,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/icons/today.png"),
                                          height: 24,
                                          width: 24,
                                        ),
                                        Text(
                                          "Today",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image:
                                      AssetImage("assets/icons/right.png"),
                                      height: 52,
                                      width: 52,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
              child: Text(
                "Upcoming",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 142,
              width: 360,
              decoration: BoxDecoration(color: Colors.green.shade50),
              child: Container(
                height: 102,
                width: 328,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 93,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2.0),
                        child: Image(
                          image: AssetImage("assets/images/Port1.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Wild mint",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        "assets/icons/Water Droplets.png"),
                                    height: 24,
                                    width: 24,
                                  ),
                                  Text(
                                    "200 ml",
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage("assets/icons/today.png"),
                                    height: 24,
                                    width: 24,
                                  ),
                                  Text(
                                    "Today",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage("assets/icons/water.png"),
                                height: 52,
                                width: 52,
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      Column(
        children: [],
      ),
      Column(
        children: [],
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF129C52),
          title: Text(
            "Remember",
            style:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  NotificationScreen()),
                  );
                },
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        body: CustomTabBar());
  }
}

class CustomTabBar extends StatefulWidget {
  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Tasks for you",
                style: TextStyle(
                    fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                height: 45,
                width: 322,
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.green, borderRadius: BorderRadius.circular(25)),
                  controller: _tabController,
                  labelColor: Colors.white,
                  dividerColor: Colors.transparent,
                  // automaticIndicatorColorAdjustment: false ,
                  // unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.transparent,
                  indicatorWeight: 0,
                  tabs: [
                    Container(
                      child: Tab(text: "All"),
                      width: 100,
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Tab(text: "Water"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: Tab(text: "Fertilizer"),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                clipBehavior: Clip.none,
                // physics: NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Text(
                            "Today",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 252,
                          decoration: BoxDecoration(color: Colors.green.shade50),
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 20),
                            child: Column(
                              children: [
                                Container(
                                  height: 102,
                                  width: 328,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border:
                                      Border.all(color: Colors.green, width: 2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 93,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(2.0),
                                          child: Image(
                                            image: AssetImage(
                                                "assets/images/Port1.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16, right: 16, top: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Wild mint",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: [
                                                    Image(
                                                      image: AssetImage(
                                                          "assets/icons/Water Droplets.png"),
                                                      height: 24,
                                                      width: 24,
                                                    ),
                                                    Text(
                                                      "200 ml",
                                                      style: TextStyle(
                                                          color:
                                                          Colors.grey.shade400,
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: [
                                                    Image(
                                                      image: AssetImage(
                                                          "assets/icons/today.png"),
                                                      height: 24,
                                                      width: 24,
                                                    ),
                                                    Text(
                                                      "Today",
                                                      style: TextStyle(
                                                          color: Colors.green,
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 60),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Image(
                                                  image: AssetImage(
                                                      "assets/icons/water.png"),
                                                  height: 52,
                                                  width: 52,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 102,
                                  width: 328,
                                  decoration: BoxDecoration(
                                      color: Colors.green.shade50,
                                      border:
                                      Border.all(color: Colors.green, width: 2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 93,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(2.0),
                                          child: Image(
                                            image: AssetImage(
                                                "assets/images/Port1.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16, right: 16, top: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Wild mint",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: [
                                                    Image(
                                                      image: AssetImage(
                                                          "assets/icons/Water Droplets.png"),
                                                      height: 24,
                                                      width: 24,
                                                    ),
                                                    Text(
                                                      "200 ml",
                                                      style: TextStyle(
                                                          color:
                                                          Colors.grey.shade400,
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: [
                                                    Image(
                                                      image: AssetImage(
                                                          "assets/icons/today.png"),
                                                      height: 24,
                                                      width: 24,
                                                    ),
                                                    Text(
                                                      "Today",
                                                      style: TextStyle(
                                                          color: Colors.green,
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 60),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Image(
                                                  image: AssetImage(
                                                      "assets/icons/right.png"),
                                                  height: 52,
                                                  width: 52,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 10),
                          child: Text(
                            "Upcoming",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 10),
                          child: Container(
                            height: 90,
                            width: 360,
                            decoration: BoxDecoration(color: Colors.green.shade50),
                            child: Container(
                              height: 90,
                              width: 328,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey.shade200, width: 2),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 93,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(2.0),
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/aloevera.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16, top: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Aloe vera",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  "assets/icons/Water Droplets.png"),
                                              height: 24,
                                              width: 24,
                                            ),
                                            Text(
                                              "200 ml",
                                              style: TextStyle(
                                                  color: Colors.grey.shade400,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  "assets/icons/event_upcoming.png"),
                                              height: 24,
                                              width: 24,
                                            ),
                                            Text(
                                              "In 6 days",
                                              style: TextStyle(
                                                  color: Colors.grey.shade500,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/icons/watergree.png"),
                                          height: 52,
                                          width: 52,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Text(
                          "Watering your plants",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 252,
                        width: 360,
                        decoration: BoxDecoration(color: Colors.green.shade50),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 102,
                              width: 328,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.green, width: 2),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 93,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(2.0),
                                      child: Image(
                                        image:
                                        AssetImage("assets/images/Port1.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16, right: 16, top: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Wild mint",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Image(
                                                  image: AssetImage(
                                                      "assets/icons/Water Droplets.png"),
                                                  height: 24,
                                                  width: 24,
                                                ),
                                                Text(
                                                  "200 ml",
                                                  style: TextStyle(
                                                      color: Colors.grey.shade400,
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Image(
                                                  image: AssetImage(
                                                      "assets/icons/today.png"),
                                                  height: 24,
                                                  width: 24,
                                                ),
                                                Text(
                                                  "Today",
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 60),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  "assets/icons/water.png"),
                                              height: 52,
                                              width: 52,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 90,
                              width: 328,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey.shade200, width: 2),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 93,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(2.0),
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/aloevera.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16, top: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Aloe vera",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  "assets/icons/Water Droplets.png"),
                                              height: 24,
                                              width: 24,
                                            ),
                                            Text(
                                              "200 ml",
                                              style: TextStyle(
                                                  color: Colors.grey.shade400,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  "assets/icons/event_upcoming.png"),
                                              height: 24,
                                              width: 24,
                                            ),
                                            Text(
                                              "In 6 days",
                                              style: TextStyle(
                                                  color: Colors.grey.shade500,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/icons/watergree.png"),
                                          height: 52,
                                          width: 52,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Text(
                          "Watering your plants",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 140,
                        width: 360,
                        decoration: BoxDecoration(color: Colors.green.shade50),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 102,
                              width: 328,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.green, width: 2),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 93,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(2.0),
                                      child: Image(
                                        image:
                                        AssetImage("assets/images/Port1.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16, right: 16, top: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Wild mint",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Image(
                                                  image: AssetImage(
                                                      "assets/icons/fertilizergrey.png"),
                                                  height: 24,
                                                  width: 24,
                                                ),
                                                Text(
                                                  "2 lb",
                                                  style: TextStyle(
                                                      color: Colors.grey.shade400,
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Image(
                                                  image: AssetImage(
                                                      "assets/icons/today.png"),
                                                  height: 24,
                                                  width: 24,
                                                ),
                                                Text(
                                                  "Today",
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 60),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  "assets/icons/fertilizeryellow.png"),
                                              height: 52,
                                              width: 52,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
