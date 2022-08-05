import 'package:brasileirao/models/title.dart' as t;
import 'package:flutter/material.dart';

class Team {
  String name;
  String shild;
  Color color;
  int points;
  List<t.Title> titles = [];

  Team(
      {required this.name,
      required this.shild,
      required this.points,
      required this.color});
}
