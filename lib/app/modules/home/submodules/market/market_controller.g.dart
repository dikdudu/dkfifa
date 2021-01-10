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
  final _$valueAtom = Atom(name: '_MarketControllerBase.value');

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

  final _$_MarketControllerBaseActionController =
      ActionController(name: '_MarketControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_MarketControllerBaseActionController.startAction(
        name: '_MarketControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_MarketControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
