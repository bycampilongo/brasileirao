import 'dart:collection';
import 'dart:typed_data';

import 'package:brasileirao/models/title.dart' as t;
import 'package:flutter/material.dart';

import '../models/team.dart';

class TeamsRepository extends ChangeNotifier {
  final List<Team> _teams = [];

  UnmodifiableListView<Team> get teams => UnmodifiableListView(_teams);

  void addTitle({required Team team, required t.Title title}) {
    team.titles.add(title);
    notifyListeners();
  }

  editTitle(
      {required t.Title title,
      required String year,
      required String championship}) {
    title.championship = championship;
    title.year = year;
    notifyListeners();
  }

  TeamsRepository() {
    _teams.addAll([
      Team(
        name: 'Palmeiras',
        points: 0,
        color: Colors.green,
        shild: 'https://logodetimes.com/times/palmeiras/logo-palmeiras-256.png',
      ),
      Team(
        name: 'Flamengo',
        points: 0,
        color: Colors.red,
        shild: 'https://logodetimes.com/times/flamengo/logo-flamengo-256.png',
      ),
      Team(
        name: 'Internacional',
        points: 0,
        color: Colors.red,
        shild:
            'https://logodetimes.com/times/internacional/logo-internacional-256.png',
      ),
      Team(
        name: 'Atlético-MG',
        points: 0,
        color: Colors.black,
        shild:
            'https://logodetimes.com/times/atletico-mineiro/logo-atletico-mineiro-256.png',
      ),
      Team(
        name: 'São Paulo',
        points: 0,
        color: Colors.red,
        shild: 'https://logodetimes.com/times/sao-paulo/logo-sao-paulo-256.png',
      ),
      Team(
        name: 'Fluminense',
        points: 0,
        color: Colors.green,
        shild:
            'https://logodetimes.com/times/fluminense/logo-fluminense-256.png',
      ),
      Team(
        name: 'Grêmio',
        points: 0,
        color: Colors.blue,
        shild: 'https://logodetimes.com/times/gremio/logo-gremio-256.png',
      ),
      Team(
        name: 'Santos',
        points: 0,
        color: Colors.black,
        shild: 'https://logodetimes.com/times/santos/logo-santos-256.png',
      ),
      Team(
        name: 'Athletico-PR',
        points: 0,
        color: Colors.red,
        shild:
            'https://logodetimes.com/times/atletico-paranaense/logo-atletico-paranaense-256.png',
      ),
      Team(
        name: 'Corinthians',
        points: 0,
        color: Colors.black,
        shild:
            'https://logodetimes.com/times/corinthians/logo-corinthians-256.png',
      ),
      Team(
        name: 'Bragantino',
        points: 0,
        color: Colors.black,
        shild:
            'https://logodetimes.com/times/red-bull-bragantino/logo-red-bull-bragantino-256.png',
      ),
      Team(
        name: 'Ceará',
        points: 0,
        color: Colors.black,
        shild: 'https://logodetimes.com/times/ceara/logo-ceara-256.png',
      ),
      Team(
        name: 'Atlético-GO',
        points: 0,
        color: Colors.red,
        shild:
            'https://logodetimes.com/times/atletico-goianiense/logo-atletico-goianiense-256.png',
      ),
      Team(
        name: 'Sport',
        points: 0,
        color: Colors.red,
        shild:
            'https://logodetimes.com/times/sport-recife/logo-sport-recife-256.png',
      ),
      Team(
        name: 'Bahia',
        points: 0,
        color: Colors.blue,
        shild: 'https://logodetimes.com/times/bahia/logo-bahia-256.png',
      ),
      Team(
        name: 'Fortaleza',
        points: 0,
        color: Colors.blue,
        shild: 'https://logodetimes.com/times/fortaleza/logo-fortaleza-256.png',
      ),
      Team(
        name: 'Vasco',
        points: 0,
        color: Colors.black,
        shild:
            'https://logodetimes.com/times/vasco-da-gama/logo-vasco-da-gama-256.png',
      ),
      Team(
        name: 'Goiás',
        points: 0,
        color: Colors.green,
        shild: 'https://logodetimes.com/times/goias/logo-goias-novo-256.png',
      ),
      Team(
        name: 'Coritiba',
        points: 0,
        color: Colors.green,
        shild: 'https://logodetimes.com/times/coritiba/logo-coritiba-5.png',
      ),
      Team(
        name: 'Botafogo',
        points: 0,
        color: Colors.black,
        shild: 'https://logodetimes.com/times/botafogo/logo-botafogo-256.png',
      ),
    ]);
  }
}
