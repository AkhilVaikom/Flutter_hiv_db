
import 'package:flutter/material.dart';
import 'package:hive_db_project/screens/add_field_widget.dart';

import 'display_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Hive DataBase"),
        elevation: 0,
      ),
      body: SafeArea(child: Column(children: [
        AddFieldWidget(),
        Expanded(child: const DisplayWidgets()),
      ],),),
    );
  }
}