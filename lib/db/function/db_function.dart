import 'package:flutter/cupertino.dart';
import 'package:hive_db_project/db/model/db_model.dart';
import 'package:hive_flutter/adapters.dart';

ValueNotifier<List<DataModel>> dataListNotifier = ValueNotifier([]);

Future<void> addData(DataModel value) async {
  final dataDB = await Hive.openBox<DataModel>('dataDB');
  final id = await dataDB.add(value);
  value.id = id;
  dataListNotifier.value.add(value);
  dataListNotifier.notifyListeners();
}

Future<void> getAllData() async {
  final dataDB = await Hive.openBox<DataModel>('dataDB');
  dataListNotifier.value.clear();
  dataListNotifier.value.addAll(dataDB.values);
  dataListNotifier.notifyListeners();
}

Future<void> deleteData(int id) async {
  final dataDB = await Hive.openBox<DataModel>('dataDB');
  await dataDB.delete(id);
  getAllData();
}
