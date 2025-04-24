import 'dart:io';

import 'package:db_demo/features/home/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

class DBApp extends StatelessWidget {
  const DBApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DB Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
