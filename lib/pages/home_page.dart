import 'package:brasileirao/controllers/home_controller.dart';
import 'package:brasileirao/models/team.dart';
import 'package:brasileirao/pages/team_page.dart';
import 'package:brasileirao/repositories/team_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var homeController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brasileirão'),
      ),
      body: Consumer<TeamsRepository>(
        builder: (context, repository, child) {
          return ListView.separated(
            itemBuilder: (BuildContext context, int team) {
              final List<Team> ranking = repository.teams;
              return ListTile(
                leading: Image.network(ranking[team].shild),
                title: Text(ranking[team].name),
                subtitle: Text('Títulos ${ranking[team].titles.length}'),
                trailing: Text(ranking[team].points.toString()),
                onTap: () {
                  Get.to(
                    () => TeamPage(
                      team: ranking[team],
                      key: Key(ranking[team].name),
                    ),
                  );
                },
              );
            },
            separatorBuilder: (_, __) => Divider(),
            padding: EdgeInsets.all(16),
            itemCount: repository.teams.length,
          );
        },
      ),
    );
  }
}
