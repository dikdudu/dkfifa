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
  final _$valueAtom = Atom(name: '_PlayerRegisterControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_PlayerRegisterControllerBaseActionController =
      ActionController(name: '_PlayerRegisterControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_PlayerRegisterControllerBaseActionController
        .startAction(name: '_PlayerRegisterControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_PlayerRegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
