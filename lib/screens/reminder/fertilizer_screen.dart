import 'package:flutter/material.dart';

class FertilizerScreen extends StatefulWidget {
  const FertilizerScreen({super.key});

  @override
  State<FertilizerScreen> createState() => _FertilizerScreenState();
}

class _FertilizerScreenState extends State<FertilizerScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                          AssetImage("assets/images/mildmint.png"),
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
    );
  }
}
