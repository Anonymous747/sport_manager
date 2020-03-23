class Team {
  final int userId;
  final int id;
  final String title;

  Team({this.userId, this.id, this.title});

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}