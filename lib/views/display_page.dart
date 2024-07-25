
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:practise_concepts/controller/update.dart';
import 'package:practise_concepts/models/product.dart';
import 'package:practise_concepts/views/update_page.dart';

class ShoppingPage extends StatelessWidget {
  final UserController userController= Get.put(UserController());
  //ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    int num_prod=0;
    double bill=0;
    return Scaffold(
      body: SafeArea(
        child: GetX<UserController>(
          builder: (controller) {
            int next_id= controller.allUsers.length +1;
            return Column(
              children: [
                ElevatedButton(onPressed: (){
                  Get.to(
                        () => UpdatePage(update_user: User(id: next_id,dept: '',name: '')),
                  );
                }, child: Text("ADD USER")),
                ElevatedButton(onPressed: (){
                  userController.clear();
                }, child: Text("RESET")),
                Expanded(
                  child: ListView.builder(itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(border: Border.all(color: Colors.blue,width: 2)),
                              width: 50,
                              height: 180,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text("${controller.allUsers[index].id.toString()})",
                                          style: const TextStyle(color: Colors.black,fontSize: 30,
                                          fontWeight: FontWeight.bold),),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(controller.allUsers[index].name,
                                          style: const TextStyle(color: Colors.black,fontSize: 30,
                                              fontWeight: FontWeight.bold),),
                                      ),
                                    ],
                                  ),
                                  Text("Department: ${controller.allUsers[index].dept}",
                                    style: const TextStyle(color: Colors.red,fontSize: 30),),
                                  ElevatedButton(onPressed: (){
                                    Get.to(() => UpdatePage(update_user: controller.allUsers[index]),);
                                  }, child: const Text("Update",style: TextStyle(color: Colors.black),))
                                ],
                              ),
                            ),
                          );
                        },itemCount: controller.allUsers.length,)
                     // }
                  //),
                ),
              ],

            );
          }
        ),
      ),
    );
  }
}

