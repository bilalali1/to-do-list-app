import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'manager/todo_repository.dart';
import 'screens/todo_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseFirestore.instance.settings.persistenceEnabled;
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  final TodoRepository todoRepository = TodoRepository();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const TodoPage(),
    );
  }
}

