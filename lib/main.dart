import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskeveryday/Widgets/Homepage.dart';
import 'package:taskeveryday/models/TaskData.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>TaskData() ,
      child: MaterialApp(
        home:HomePageTask(),
      ),
    );
  }
}

