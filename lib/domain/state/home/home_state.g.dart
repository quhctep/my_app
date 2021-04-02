// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeState on HomeStateBase, Store {
  final _$infoAtom = Atom(name: 'HomeStateBase.info');

  @override
  Info get info {
    _$infoAtom.reportRead();
    return super.info;
  }

  @override
  set info(Info value) {
    _$infoAtom.reportWrite(value, super.info, () {
      super.info = value;
    });
  }

  final _$isLoadingAtom = Atom(name: 'HomeStateBase.isLoading');

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

  final _$getInfoAsyncAction = AsyncAction('HomeStateBase.getInfo');

  @override
  Future<void> getInfo({@required String login, @required String password}) {
    return _$getInfoAsyncAction
        .run(() => super.getInfo(login: login, password: password));
  }

  @override
  String toString() {
    return '''
info: ${info},
isLoading: ${isLoading}
    ''';
  }
}
