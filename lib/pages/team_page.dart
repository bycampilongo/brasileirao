import 'package:flutter/material.dart';
import 'package:brasileirao/models/team.dart';
import 'package:brasileirao/pages/add_title_page.dart';
import 'package:brasileirao/pages/statics_page.dart';
// import 'package:brasileirao/pages/titles_page.dart';
import 'package:brasileirao/repositories/team_repository.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class TeamPage extends StatefulWidget {
  Team team;
  TeamPage({required this.team, Key? key}) : super(key: key);

  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  void titlePage() {
    Get.to(() => AddTitlePage(team: widget.team));
  }

  Widget titles() {
    final team = Provider.of<TeamsRepository>(context)
        .teams
        .firstWhere((element) => element.name == widget.team.name);

    final qtd = team.titles.length;

    return qtd == 0
        ? const Center(
            child: Text(
              'Nenhum título cadastrado.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(Icons.emoji_events),
                title: Text(team.titles[index].championship),
                trailing: Text(team.titles[index].year),
              );
            },
            separatorBuilder: (_, __) => Divider(),
            itemCount: qtd);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: widget.team.color,
          title: Text(widget.team.name),
          actions: [
            IconButton(onPressed: titlePage, icon: const Icon(Icons.add))
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.stacked_line_chart),
                text: 'Statistics',
              ),
              Tab(
                icon: Icon(Icons.emoji_events),
                text: 'Titles',
              ),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            StaticsPage(team: widget.team),
            titles(),
          ],
        ),
      ),
    );
  }
}
