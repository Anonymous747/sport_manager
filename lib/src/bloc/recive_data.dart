import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:sport_manager/src/model/team.dart';
import 'package:http/http.dart' as http;

List<Team> parseAlbums(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Team>((json) => Team.fromJson(json)).toList();
}

Future<List<Team>> fetchAlbums() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/albums');

  return compute(parseAlbums, response.body);
}