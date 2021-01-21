// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $MarketController = BindInject(
  (i) => MarketController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MarketController on _MarketControllerBase, Store {
  final _$allPlayersAtom = Atom(name: '_MarketControllerBase.allPlayers');

  @override
  List<PlayerModel> get allPlayers {
    _$allPlayersAtom.reportRead();
    return super.allPlayers;
  }

  @override
  set allPlayers(List<PlayerModel> value) {
    _$allPlayersAtom.reportWrite(value, super.allPlayers, () {
      super.allPlayers = value;
    });
  }

  final _$searchAtom = Atom(name: '_MarketControllerBase.search');

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  final _$_MarketControllerBaseActionController =
      ActionController(name: '_MarketControllerBase');

  @override
  void setSearch(String value) {
    final _$actionInfo = _$_MarketControllerBaseActionController.startAction(
        name: '_MarketControllerBase.setSearch');
    try {
      return super.setSearch(value);
    } finally {
      _$_MarketControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
allPlayers: ${allPlayers},
search: ${search}
    ''';
  }
}
