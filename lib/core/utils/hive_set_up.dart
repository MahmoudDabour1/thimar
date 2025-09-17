

import 'package:hive_flutter/hive_flutter.dart';


Future<void> initHive() async {
  await Hive.initFlutter();
  _registerHiveAdapters();
 }

void _registerHiveAdapters() {

}