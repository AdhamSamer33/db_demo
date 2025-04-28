import 'package:db_demo/features/home/presentation/pages/home_screen.dart';
import 'package:db_demo/utils/ObseerverUtils.dart';
import 'package:flutter/material.dart';

class DBApp extends StatelessWidget {
  DBApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DB Demo',
      navigatorObservers: [ObserverUtils.routeObserver],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
