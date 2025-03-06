import 'package:get/get.dart';
import 'dart:convert';

import '../Models/lessonsModel.dart'; // For converting to/from JSON

class lessonModelController extends GetxController {
  var imageList = <lessonsModel>[].obs;

  final List<lessonsModel> lessonsListModel = <lessonsModel>[
    lessonsModel(
      id: "1",
      lessonsImage: "assets/images/1lesson.png",
      lesssonsDescription: "Houseplants: How to turn your brown thumb green",
    ),
    lessonsModel(
      id: "2",
      lessonsImage: "assets/images/2lessons.png",
      lesssonsDescription: "Lawn care: the guide to a prize-winning yard",
    ),
    lessonsModel(
      id: "3",
      lessonsImage: "assets/images/3lessons.png",
      lesssonsDescription: "Vertical gardening: indoor & outdoor vines growing",
    ),
    lessonsModel(
      id: "4",
      lessonsImage: "assets/images/4lessons.png",
      lesssonsDescription: "Trees: Shade your yard in summer",
    )
  ];

  // Add a new ImageModel to the list
  void addImageModel(lessonsModel model) {
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
        jsonData.map((jsonItem) => lessonsModel.fromJson(jsonItem)).toList();
  }
}
