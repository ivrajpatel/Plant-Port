import 'package:flutter/material.dart';

class PlantsMyplants extends StatelessWidget {
  const PlantsMyplants({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 245,
          decoration: BoxDecoration(color: Colors.green.shade50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 206,
                  width: 328,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 12, right: 12, top: 12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 100,
                              height: 117,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/mildmint.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Wild mint",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "Mentha arvensis",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                      Text(
                                        "No site selected",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.water_drop,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                      Text(
                                        "Every 4 days",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [Icon(Icons.more_vert)],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15, left: 12),
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: 304,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.green),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.watch_later_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Add Reminder",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            height: 45,
            width: 304,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 1, color: Colors.green),
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Colors.green,
                ),
                SizedBox(width: 5),
                Text(
                  "Add Reminder",
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
