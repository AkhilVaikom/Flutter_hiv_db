import 'package:flutter/cupertino.dart';
import 'package:hive_db_project/db/model/db_model.dart';

ValueNotifier<List<DataModel>> dataListNotifier=ValueNotifier([]);

void addData(DataModel value){
  dataListNotifier.value.add(value);
  dataListNotifier.notifyListeners();
}