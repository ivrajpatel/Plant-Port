import 'package:flutter/material.dart';

class AllScreen extends StatefulWidget {
  const AllScreen({super.key});

  @override
  State<AllScreen> createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
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
                                  "assets/images/mildmint.png"),
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
                                  "assets/images/mildmint.png"),
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
    );
  }
}
