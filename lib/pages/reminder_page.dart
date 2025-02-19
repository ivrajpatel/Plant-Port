import 'package:flutter/material.dart';

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
      Column(
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
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      Column(
        children: [],
      ),
      Column(
        children: [],
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF129C52),
        title: Text(
          "Remember",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              "Tasks for you",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 28),
            ),
          ),
          SizedBox(
            height: 29,
          ),
          Center(
            child: Container(
              width: 322,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xFFDCF3E6),
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                children: List.generate(filters.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                        _currentIndex = index;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: AnimatedContainer(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: selectedIndex == index
                                    ? Color(0xFF129C52)
                                    : Color(0xFFDCF3E6),
                              ),
                              duration: const Duration(milliseconds: 500),
                              child: Center(
                                child: Container(
                                  child: filters[index],
                                ),
                              )),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          pages[_currentIndex],
        ],
      ),
    );
  }
}
