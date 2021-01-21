// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_register_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PlayerRegisterController = BindInject(
  (i) => PlayerRegisterController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlayerRegisterController on _PlayerRegisterControllerBase, Store {
  final _$nameAtom = Atom(name: '_PlayerRegisterControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$imageAtom = Atom(name: '_PlayerRegisterControllerBase.image');

  @override
  String get image {
    _$imageAtom.reportRead();
    return super.image;
  }

  @override
  set image(String value) {
    _$imageAtom.reportWrite(value, super.image, () {
      super.image = value;
    });
  }

  final _$overAtom = Atom(name: '_PlayerRegisterControllerBase.over');

  @override
  int get over {
    _$overAtom.reportRead();
    return super.over;
  }

  @override
  set over(int value) {
    _$overAtom.reportWrite(value, super.over, () {
      super.over = value;
    });
  }

  final _$positionAtom = Atom(name: '_PlayerRegisterControllerBase.position');

  @override
  String get position {
    _$positionAtom.reportRead();
    return super.position;
  }

  @override
  set position(String value) {
    _$positionAtom.reportWrite(value, super.position, () {
      super.position = value;
    });
  }

  final _$datenascAtom = Atom(name: '_PlayerRegisterControllerBase.datenasc');

  @override
  String get datenasc {
    _$datenascAtom.reportRead();
    return super.datenasc;
  }

  @override
  set datenasc(String value) {
    _$datenascAtom.reportWrite(value, super.datenasc, () {
      super.datenasc = value;
    });
  }

  final _$loadingAtom = Atom(name: '_PlayerRegisterControllerBase.loading');

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

  final _$savePlayerAsyncAction =
      AsyncAction('_PlayerRegisterControllerBase.savePlayer');

  @override
  Future<bool> savePlayer() {
    return _$savePlayerAsyncAction.run(() => super.savePlayer());
  }

  final _$_PlayerRegisterControllerBaseActionController =
      ActionController(name: '_PlayerRegisterControllerBase');

  @override
  dynamic changePlayerName(String name) {
    final _$actionInfo = _$_PlayerRegisterControllerBaseActionController
        .startAction(name: '_PlayerRegisterControllerBase.changePlayerName');
    try {
      return super.changePlayerName(name);
    } finally {
      _$_PlayerRegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePlayerImage(String url) {
    final _$actionInfo = _$_PlayerRegisterControllerBaseActionController
        .startAction(name: '_PlayerRegisterControllerBase.changePlayerImage');
    try {
      return super.changePlayerImage(url);
    } finally {
      _$_PlayerRegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePlayerOver(String over) {
    final _$actionInfo = _$_PlayerRegisterControllerBaseActionController
        .startAction(name: '_PlayerRegisterControllerBase.changePlayerOver');
    try {
      return super.changePlayerOver(over);
    } finally {
      _$_PlayerRegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePlayerPosition(String position) {
    final _$actionInfo =
        _$_PlayerRegisterControllerBaseActionController.startAction(
            name: '_PlayerRegisterControllerBase.changePlayerPosition');
    try {
      return super.changePlayerPosition(position);
    } finally {
      _$_PlayerRegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePlayerDateNasc(String date) {
    final _$actionInfo =
        _$_PlayerRegisterControllerBaseActionController.startAction(
            name: '_PlayerRegisterControllerBase.changePlayerDateNasc');
    try {
      return super.changePlayerDateNasc(date);
    } finally {
      _$_PlayerRegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String validateName(dynamic name) {
    final _$actionInfo = _$_PlayerRegisterControllerBaseActionController
        .startAction(name: '_PlayerRegisterControllerBase.validateName');
    try {
      return super.validateName(name);
    } finally {
      _$_PlayerRegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String validateImage(dynamic url) {
    final _$actionInfo = _$_PlayerRegisterControllerBaseActionController
        .startAction(name: '_PlayerRegisterControllerBase.validateImage');
    try {
      return super.validateImage(url);
    } finally {
      _$_PlayerRegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String validateOver(dynamic over) {
    final _$actionInfo = _$_PlayerRegisterControllerBaseActionController
        .startAction(name: '_PlayerRegisterControllerBase.validateOver');
    try {
      return super.validateOver(over);
    } finally {
      _$_PlayerRegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
image: ${image},
over: ${over},
position: ${position},
datenasc: ${datenasc},
loading: ${loading}
    ''';
  }
}
