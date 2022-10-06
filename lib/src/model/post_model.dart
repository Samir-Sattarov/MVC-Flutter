class PostModel {
  final String title;
  final String body;
  final int id;

  PostModel({
    required this.id,
    required this.body,
    required this.title,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      body: json['body'],
      title: json['title'],
    );
  }
}
