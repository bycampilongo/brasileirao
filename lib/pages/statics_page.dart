import 'package:brasileirao/widgets/shild.dart';
import 'package:flutter/material.dart';

import '../models/team.dart';

class StaticsPage extends StatelessWidget {
  const StaticsPage({
    Key? key,
    required this.team,
  }) : super(key: key);

  final Team team;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(24),
          child: Shild(
            image: team.shild,
            width: 250,
          ),
        ),
        Text(
          'Pontos: ${team.points}',
          style: TextStyle(
            fontSize: 22,
          ),
        )
      ],
    );
  }
}
