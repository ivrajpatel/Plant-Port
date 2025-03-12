import 'package:get/get.dart';
import 'dart:convert';
import '../Models/choosesiteModel.dart';

class choosesiteModelController extends GetxController {
  var imageList = <choosesitemodel>[].obs;

  final List<choosesitemodel> choosesiteListModel = <choosesitemodel>[
    choosesitemodel(
        choosesiteId: "1",
        choosesiteName: "Living room",
        choosesiteImage: "assets/images/choose1.png"),
    choosesitemodel(
        choosesiteId: "2",
        choosesiteName: "Kitchen",
        choosesiteImage: "assets/images/choose2.png"),
    choosesitemodel(
        choosesiteId: "3",
        choosesiteName: "Bedroom",
        choosesiteImage: "assets/images/choose3.png"),
    choosesitemodel(
        choosesiteId: "4",
        choosesiteName: "Bathroom",
        choosesiteImage: "assets/images/choose4.png"),
    choosesitemodel(
        choosesiteId: "5",
        choosesiteName: "Hall",
        choosesiteImage: "assets/images/choose5.png"),
    choosesitemodel(
        choosesiteId: "6",
        choosesiteName: "Office",
        choosesiteImage: "assets/images/choose6.png"),
    choosesitemodel(
        choosesiteId: "7",
        choosesiteName: "Porch",
        choosesiteImage: "assets/images/choose7.png"),
    choosesitemodel(
        choosesiteId: "8",
        choosesiteName: "Terrace",
        choosesiteImage: "assets/images/choose8.png"),
    choosesitemodel(
        choosesiteId: "9",
        choosesiteName: "Patio",
        choosesiteImage: "assets/images/choose9.png"),
    choosesitemodel(
        choosesiteId: "10",
        choosesiteName: "Backyard",
        choosesiteImage: "assets/images/choose10.png"),
    choosesitemodel(
        choosesiteId: "11",
        choosesiteName: "Balcony",
        choosesiteImage: "assets/images/choose11.png"),
  ];

  void addImageModel(choosesitemodel model) {
    imageList.add(model);
  }

  String getJsonData() {
    List<Map<String, dynamic>> jsonData =
        imageList.map((imageModel) => imageModel.toJson()).toList();
    return jsonEncode(jsonData);
  }

  void loadJsonData(String jsonString) {
    List<dynamic> jsonData = jsonDecode(jsonString);
    imageList.value =
        jsonData.map((jsonItem) => choosesitemodel.fromJson(jsonItem)).toList();
  }
}
