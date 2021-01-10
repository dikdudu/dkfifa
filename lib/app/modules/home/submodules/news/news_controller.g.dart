// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $NewsController = BindInject(
  (i) => NewsController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewsController on _NewsControllerBase, Store {
  final _$valueAtom = Atom(name: '_NewsControllerBase.value');

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

  final _$_NewsControllerBaseActionController =
      ActionController(name: '_NewsControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_NewsControllerBaseActionController.startAction(
        name: '_NewsControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_NewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
