
class PostDTO {
  final int id;
  final String title;
  final String body;
  final int userId;

  PostDTO({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
  });

  factory PostDTO.fromJson(Map<String, dynamic> json) {
 
    assert(json['id'] is int);
    assert(json['title'] is String);
    assert(json['body'] is String);
    assert(json['userId'] is int);

    return PostDTO(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      userId: json['userId'],
    );
  }
}