import 'package:flutter/material.dart';
import 'package:hive_db_project/db/model/db_model.dart';
import 'package:hive_db_project/screens/home_screen.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(DataModelAdapter().typeId)) {
    Hive.registerAdapter(DataModelAdapter());
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
