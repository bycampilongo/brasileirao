import 'package:brasileirao/models/team.dart';
import 'package:brasileirao/repositories/team_repository.dart';

class HomeController {
  TeamsRepository teamsRepository;

  List<Team> get ranking => teamsRepository.teams;

  HomeController() : teamsRepository = TeamsRepository();
}
