
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practise_concepts/controller/update.dart';
import 'package:practise_concepts/models/product.dart';
import 'package:practise_concepts/views/display_page.dart';

class UpdatePage extends StatelessWidget {
  final User update_user;

  const UpdatePage({Key? key, required this.update_user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _IDController =
    TextEditingController(text: update_user.id.toString());
    TextEditingController _nameController =
    TextEditingController(text: update_user.name);
    TextEditingController _deptController =
    TextEditingController(text: update_user.dept);

    final UserController userController = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Update User'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _IDController,
              decoration: InputDecoration(labelText: 'ID'),
              readOnly: true,
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _deptController,
              decoration: InputDecoration(labelText: 'Department'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                userController.allUsers.add(User(
                    id: int.parse(_IDController.text),
                    dept: _deptController.text,
                    name: _nameController.text));
                Get.to(() => ShoppingPage());
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

