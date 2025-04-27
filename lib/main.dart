import 'package:db_demo/db_demo_app.dart';
import 'package:db_demo/main_inits.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await MainInits.init();
  runApp(DBApp());
}
