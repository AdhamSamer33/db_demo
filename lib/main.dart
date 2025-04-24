import 'package:db_demo/db_demo_app.dart';
import 'package:flutter/material.dart';

import 'local_data_storage/local_data_storage.dart';

Future<void> main() async {
  await LocalDataStorage.init();
  runApp(DBApp());
}
