import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_db_project/db/function/db_function.dart';
import 'package:hive_db_project/db/model/db_model.dart';

class DisplayWidgets extends StatelessWidget {
  const DisplayWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: dataListNotifier,
      builder: (BuildContext context, List<DataModel> datalist, Widget? child) {
        return ListView.separated(
          itemBuilder: (context, index) {
            final data = datalist[index];
            return ListTile(
              title: Text(data.name),
              subtitle: Text(data.age),
              trailing: IconButton(onPressed: (){
                data.id!= null ? deleteData(data.id!): print("Id doesnot Exit");
               
              }, icon: Icon(Icons.delete,color: Colors.red,)),
            );
          },
          itemCount: datalist.length,
          separatorBuilder: (context, index) {
            return const Divider();
          },
        );
      },
    );
  }
}
