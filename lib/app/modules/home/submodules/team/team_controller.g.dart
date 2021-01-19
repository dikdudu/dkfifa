// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $TeamController = BindInject(
  (i) => TeamController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TeamController on _TeamControllerBase, Store {
  final _$userAtom = Atom(name: '_TeamControllerBase.user');

  @override
  UserModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$teamAtom = Atom(name: '_TeamControllerBase.team');

  @override
  TeamModel get team {
    _$teamAtom.reportRead();
    return super.team;
  }

  @override
  set team(TeamModel value) {
    _$teamAtom.reportWrite(value, super.team, () {
      super.team = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_TeamControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$playersAtom = Atom(name: '_TeamControllerBase.players');

  @override
  List<PlayerModel> get players {
    _$playersAtom.reportRead();
    return super.players;
  }

  @override
  set players(List<PlayerModel> value) {
    _$playersAtom.reportWrite(value, super.players, () {
      super.players = value;
    });
  }

  final _$getUserAsyncAction = AsyncAction('_TeamControllerBase.getUser');

  @override
  Future<dynamic> getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  final _$getTeamAsyncAction = AsyncAction('_TeamControllerBase.getTeam');

  @override
  Future<dynamic> getTeam(dynamic teamUser) {
    return _$getTeamAsyncAction.run(() => super.getTeam(teamUser));
  }

  final _$getPlayersTeamAsyncAction =
      AsyncAction('_TeamControllerBase.getPlayersTeam');

  @override
  Future<dynamic> getPlayersTeam(dynamic userTeam) {
    return _$getPlayersTeamAsyncAction
        .run(() => super.getPlayersTeam(userTeam));
  }

  @override
  String toString() {
    return '''
user: ${user},
team: ${team},
isLoading: ${isLoading},
players: ${players}
    ''';
  }
}
