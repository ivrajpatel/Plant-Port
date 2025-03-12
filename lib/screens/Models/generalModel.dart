class generalModel {
  String generalid;
  String generalImage;
  String generalDescription;
  String generallessons;

  generalModel({
    required this.generalid,
    required this.generalImage,
    required this.generalDescription,
    required this.generallessons,
  });

  factory generalModel.fromJson(Map<String, dynamic> json) {
    return generalModel(
      generalid: json["generalid"],
      generalImage: json["generalImage"],
      generalDescription: json["generalDescription"],
      generallessons: json["generallessons"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['generalid'] = generalid;
    data['generalImage'] = generalImage;
    data['generalDescription'] = generalDescription;
    data['generallessons'] = generallessons;
    return data;
  }
}
