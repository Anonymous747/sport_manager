import 'package:flutter/material.dart';
import 'package:sport_manager/src/model/team_photos.dart';

class TeamPhotoesList extends StatelessWidget {
  final List<TeamPhoto> teamPhotoes;

  TeamPhotoesList({this.teamPhotoes});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Image.network(teamPhotoes[index].thumbnailUrl, height: 150, width: 150,);
      }
    );
  }
}