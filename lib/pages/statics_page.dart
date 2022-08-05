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
          child: Image.network(
            team.shild.replaceAll('40x40', '100X100'),
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
