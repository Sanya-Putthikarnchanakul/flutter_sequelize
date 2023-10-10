import 'package:sqflite/sqflite.dart';

Future<String> getPlatformSpecificDatabasePath() async {
  return await getDatabasesPath();
}
