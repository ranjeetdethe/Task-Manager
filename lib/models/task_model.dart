class TaskModel {
  final int id;
  final String title;
  final List<String> tags;
  final int comments;
  final int likes;

  TaskModel({
    required this.id,
    required this.title,
    required this.tags,
    required this.comments,
    required this.likes,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'],
      title: json['title'],
      tags: ["UI Design", "Project"],
      comments: json['id'],
      likes: json['id'] * 2,
    );
  }
}
