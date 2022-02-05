import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trello_app/provider/task_provider_A.dart';
import 'package:trello_app/provider/task_provider_B.dart';
import 'package:trello_app/provider/task_provider_C.dart';
import 'package:trello_app/provider/task_provider_D.dart';
import 'package:trello_app/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskProviderA()),
        ChangeNotifierProvider(create: (_) => TaskProviderB()),
        ChangeNotifierProvider(create: (_) => TaskProviderC()),
        ChangeNotifierProvider(create: (_) => TaskProviderD()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}




