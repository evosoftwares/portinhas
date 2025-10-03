import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _estabelecimentos =
          prefs.getStringList('ff_estabelecimentos') ?? _estabelecimentos;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _estabelecimentos = [];
  List<String> get estabelecimentos => _estabelecimentos;
  set estabelecimentos(List<String> value) {
    _estabelecimentos = value;
    prefs.setStringList('ff_estabelecimentos', value);
  }

  void addToEstabelecimentos(String value) {
    estabelecimentos.add(value);
    prefs.setStringList('ff_estabelecimentos', _estabelecimentos);
  }

  void removeFromEstabelecimentos(String value) {
    estabelecimentos.remove(value);
    prefs.setStringList('ff_estabelecimentos', _estabelecimentos);
  }

  void removeAtIndexFromEstabelecimentos(int index) {
    estabelecimentos.removeAt(index);
    prefs.setStringList('ff_estabelecimentos', _estabelecimentos);
  }

  void updateEstabelecimentosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    estabelecimentos[index] = updateFn(_estabelecimentos[index]);
    prefs.setStringList('ff_estabelecimentos', _estabelecimentos);
  }

  void insertAtIndexInEstabelecimentos(int index, String value) {
    estabelecimentos.insert(index, value);
    prefs.setStringList('ff_estabelecimentos', _estabelecimentos);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
