import 'package:get/get.dart';
import 'dart:convert';

import '../Models/generalModel.dart';
import '../Models/lessonsModel.dart'; // For converting to/from JSON

class generalModelController extends GetxController {
  var imageList = <generalModel>[].obs;

  final List<generalModel> generalListModel = <generalModel>[
    generalModel(
        generalid: "1",
        generalImage: "assets/images/General1.png",
        generalDescription: "How to set up plant in living room",
        generallessons: "4 Lesions"),
    generalModel(
        generalid: "2",
        generalImage: "assets/images/General2.png",
        generalDescription: "Garden safety: protect yourself from toxic plants",
        generallessons: "12 Lesions"),
    generalModel(
        generalid: "3",
        generalImage: "assets/images/General3.png",
        generalDescription:
            "Floral design 101: basic principle to create elegant",
        generallessons: "2 Lesions"),
    generalModel(
        generalid: "4",
        generalImage: "assets/images/General4.png",
        generalDescription: "Penjing 101: history, style, and how to make",
        generallessons: "4 Lesions"),
  ];

  // Add a new ImageModel to the list
  void addImageModel(generalModel model) {
    imageList.add(model);
  }

  String getJsonData() {
    List<Map<String, dynamic>> jsonData =
        imageList.map((imageModel) => imageModel.toJson()).toList();
    return jsonEncode(jsonData); // Convert the list to a JSON string
  }

  // Load data from a JSON string (useful for loading saved data)
  void loadJsonData(String jsonString) {
    List<dynamic> jsonData = jsonDecode(jsonString);
    imageList.value =
        jsonData.map((jsonItem) => generalModel.fromJson(jsonItem)).toList();
  }
}
