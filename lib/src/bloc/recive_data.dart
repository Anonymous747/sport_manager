import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:sport_manager/src/model/team.dart';
import 'package:http/http.dart' as http;
import 'package:sport_manager/src/model/team_photos.dart';

List<Team> parseAlbums(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Team>((json) => Team.fromJson(json)).toList();
}

//'https://jsonplaceholder.typicode.com/albums'
Future<List<Team>> fetchAlbums(http.Client client) async {
  final response = await client.get('https://jsonplaceholder.typicode.com/albums');

  return compute(parseAlbums, response.body);
}

List<TeamPhoto> parseTeamPhotoes(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<TeamPhoto>((json) => TeamPhoto.fromJson(json)).toList();
}

Future<List<TeamPhoto>> fetchTeamPhotoes(http.Client client) async {
  final response =
    await client.get('https://jsonplaceholder.typicode.com/photos');

    return compute(parseTeamPhotoes, response.body);
}