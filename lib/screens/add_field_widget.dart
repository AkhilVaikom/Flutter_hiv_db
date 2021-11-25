import 'package:flutter/material.dart';
import 'package:hive_db_project/db/function/db_function.dart';
import 'package:hive_db_project/db/model/db_model.dart';

class AddFieldWidget extends StatelessWidget {
  AddFieldWidget({Key? key}) : super(key: key);

  final textName = TextEditingController();
  final textAge = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextFormField(
            controller: textName,
            style: const TextStyle(color: Colors.blueGrey, fontSize: 24),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Name',
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: textAge,
            style: const TextStyle(color: Colors.blueGrey, fontSize: 24),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Age',
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () => addDetails(), child: const Text("Add"))
        ],
      ),
    );
  }

  void addDetails() {
    final _name = textName.text;
    final _age = textAge.text;

    if (_name.isEmpty || _age.isEmpty) {
      return;
    } else {
      final data = DataModel(age: _age, name: _name);
      addData(data);
      textName.clear();
      textAge.clear();
    }
  }
}
