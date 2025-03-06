import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/choosesiteModel_controller.dart';

class SitesMyplants extends StatefulWidget {
  const SitesMyplants({super.key});

  @override
  State<SitesMyplants> createState() => _SitesMyplantsState();
}

class _SitesMyplantsState extends State<SitesMyplants> {
  final choosesiteModelController choosesiteController =
      Get.put(choosesiteModelController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 05, right: 05),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose site",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Get personalized, Site-based plat care tips",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: choosesiteController.choosesiteListModel.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.5),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image(
                            image: AssetImage(choosesiteController
                                .choosesiteListModel[index].choosesiteImage),
                          ),
                        ),
                      ),
                      Text(
                        choosesiteController
                            .choosesiteListModel[index].choosesiteName,
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  );
                },
              ),
            ),
            Center(
              child: Container(
                height: 45,
                width: 304,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.green),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Select sites",
                      style: TextStyle(color: Colors.white,fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
