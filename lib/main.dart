import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practise_concepts/views/display_page.dart';
import 'package:practise_concepts/views/update_page.dart';

void main() {
  runApp(const MyApp());
}
List<String> widgets=['1','2','3','4'];

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingPage(),
      getPages:[
        //GetPage(name: '/update_page', page: ()=> UpdatePage())

      ]
    );
  }}
