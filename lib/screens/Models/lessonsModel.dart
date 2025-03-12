class lessonsModel {
  String id;
  String lessonsImage;
  String lesssonsDescription;

  lessonsModel({
    required this.id,
    required this.lessonsImage,
    required this.lesssonsDescription,
  });

  factory lessonsModel.fromJson(Map<String, dynamic> json) {
    return lessonsModel(
      id: json["id"],
      lessonsImage: json["slideImage"],
      lesssonsDescription: json["scrollDescription"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['lessonsImage'] = lessonsImage;
    data['lesssonsDescription'] = lesssonsDescription;
    return data;
  }
}
