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
  Computed<bool> _$checkPricePlayerComputed;

  @override
  bool get checkPricePlayer => (_$checkPricePlayerComputed ??= Computed<bool>(
          () => super.checkPricePlayer,
          name: '_MarketControllerBase.checkPricePlayer'))
      .value;

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

  final _$teamNameAtom = Atom(name: '_MarketControllerBase.teamName');

  @override
  String get teamName {
    _$teamNameAtom.reportRead();
    return super.teamName;
  }

  @override
  set teamName(String value) {
    _$teamNameAtom.reportWrite(value, super.teamName, () {
      super.teamName = value;
    });
  }

  final _$transferPriceAtom = Atom(name: '_MarketControllerBase.transferPrice');

  @override
  int get transferPrice {
    _$transferPriceAtom.reportRead();
    return super.transferPrice;
  }

  @override
  set transferPrice(int value) {
    _$transferPriceAtom.reportWrite(value, super.transferPrice, () {
      super.transferPrice = value;
    });
  }

  final _$inicialPricePlayerAtom =
      Atom(name: '_MarketControllerBase.inicialPricePlayer');

  @override
  int get inicialPricePlayer {
    _$inicialPricePlayerAtom.reportRead();
    return super.inicialPricePlayer;
  }

  @override
  set inicialPricePlayer(int value) {
    _$inicialPricePlayerAtom.reportWrite(value, super.inicialPricePlayer, () {
      super.inicialPricePlayer = value;
    });
  }

  final _$errorAtom = Atom(name: '_MarketControllerBase.error');

  @override
  String get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$loadingTransferAtom =
      Atom(name: '_MarketControllerBase.loadingTransfer');

  @override
  bool get loadingTransfer {
    _$loadingTransferAtom.reportRead();
    return super.loadingTransfer;
  }

  @override
  set loadingTransfer(bool value) {
    _$loadingTransferAtom.reportWrite(value, super.loadingTransfer, () {
      super.loadingTransfer = value;
    });
  }

  final _$successAtom = Atom(name: '_MarketControllerBase.success');

  @override
  bool get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  final _$loadingAtom = Atom(name: '_MarketControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$transferPlayerAsyncAction =
      AsyncAction('_MarketControllerBase.transferPlayer');

  @override
  Future<void> transferPlayer(
      String idPlayer, String currentTeam, int over, int currentPrice) {
    return _$transferPlayerAsyncAction.run(
        () => super.transferPlayer(idPlayer, currentTeam, over, currentPrice));
  }

  final _$getDispAsyncAction = AsyncAction('_MarketControllerBase.getDisp');

  @override
  Future<dynamic> getDisp() {
    return _$getDispAsyncAction.run(() => super.getDisp());
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
  dynamic changeTeamName(String team) {
    final _$actionInfo = _$_MarketControllerBaseActionController.startAction(
        name: '_MarketControllerBase.changeTeamName');
    try {
      return super.changeTeamName(team);
    } finally {
      _$_MarketControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeTransferPrice(String value) {
    final _$actionInfo = _$_MarketControllerBaseActionController.startAction(
        name: '_MarketControllerBase.changeTransferPrice');
    try {
      return super.changeTransferPrice(value);
    } finally {
      _$_MarketControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeError(String value) {
    final _$actionInfo = _$_MarketControllerBaseActionController.startAction(
        name: '_MarketControllerBase.changeError');
    try {
      return super.changeError(value);
    } finally {
      _$_MarketControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
allPlayers: ${allPlayers},
search: ${search},
teamName: ${teamName},
transferPrice: ${transferPrice},
inicialPricePlayer: ${inicialPricePlayer},
error: ${error},
loadingTransfer: ${loadingTransfer},
success: ${success},
loading: ${loading},
checkPricePlayer: ${checkPricePlayer}
    ''';
  }
}
