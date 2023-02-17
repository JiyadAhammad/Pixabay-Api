import 'dart:math';

import 'package:flutter/Material.dart';
import 'package:stack/api/api.dart';
import 'package:stack/model/datamodel.dart';
import 'package:stack/model/model.dart';

class ProviderClass with ChangeNotifier {
  bool isLodaing = false;
  List<CharacterModel> user = [];

  ProviderClass() {
    fetchEvents();
  }
  fetchEvents() async {
    isLodaing = true;
    notifyListeners();
    user = await Api().fetchUserData();
    isLodaing = false;
    notifyListeners();
  }
}

List<DataModel> data = List.generate(
  50,
  (index) => DataModel(
    title: 'Data ${index + 1}',
    subtitle: '${Random().nextInt(100)}',
  ),
);

class BoolProvider with ChangeNotifier {
  bool _isLodaing = false;

  List<DataModel> _dataModel = data;
  List<DataModel> get dataModel => _dataModel;

  bool get isLodaing => _isLodaing;

  setLoading(bool val) {
    _isLodaing = val;
    notifyListeners();
  }
}

class FavProvider with ChangeNotifier {
  final List<DataModel> _favList = [];
  List<DataModel> get favList => _favList;

  addData(DataModel data) {
    favList.add(data);
    notifyListeners();
  }

  removeData(DataModel data) {
    favList.remove(data);
    notifyListeners();
  }
}
