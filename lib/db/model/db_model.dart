import 'package:hive_flutter/adapters.dart';
part 'db_model.g.dart';

@HiveType(typeId: 1)

class DataModel{
  @HiveField(0)
  int ? id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String age;

  DataModel({required this.name,required this.age,this.id});
}