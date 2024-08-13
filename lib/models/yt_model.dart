class YtModel {
  final String image;
  final String name;

  YtModel({
    required this.image,
    required this.name,
  });

  factory YtModel.fromJson(Map<String, dynamic> json) {
    return YtModel(image: '', name: '');
  }
}
