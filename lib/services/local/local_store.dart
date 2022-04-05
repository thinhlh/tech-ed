import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStore {
  late final SharedPreferences _store;

  LocalStore._internal();

  static final LocalStore instance = LocalStore._internal();

  Future<bool> init() {
    try {
      return SharedPreferences.getInstance()
          .then((value) => _store = value)
          .then((value) => true);
    } catch (e) {
      return Future(() => false);
    }
  }

  T? get<T>(String key, {T? defValue}) {
    try {
      final result = _store.get(key);
      return (result as T);
    } catch (e) {
      return defValue;
    }
  }
}
