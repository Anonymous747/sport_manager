class TeamPhoto {
  final int teamId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  TeamPhoto({this.teamId, this.id, this.title, this.url, this.thumbnailUrl});
  
   factory TeamPhoto.fromJson(Map<String, dynamic> json) {
    return TeamPhoto(
      teamId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl : json['thumbnailUrl'] as String,
    );
  }
}