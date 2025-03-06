class choosesitemodel {
  String choosesiteId;
  String choosesiteName;
  String choosesiteImage;

  choosesitemodel({
    required this.choosesiteId,
    required this.choosesiteName,
    required this.choosesiteImage,
});

  factory choosesitemodel.fromJson(Map<String, dynamic> json){
    return choosesitemodel(
    choosesiteId: json["choosesiteId"],
  choosesiteName: json["choosesiteName"],
  choosesiteImage: json["choosesiteImage"],
    );
  }

  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['choosesiteId'] = choosesiteId;
  data['choosesiteName'] = choosesiteName;
  data['choosesiteImage'] = choosesiteImage;

  return data;
  }
}