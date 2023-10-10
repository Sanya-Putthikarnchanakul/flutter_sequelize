import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'utils.dart';

class Sequelize {
  String databaseName;
  String? databasePath;
  Database? db;

  Sequelize({required this.databaseName, this.databasePath});

  Future<void> connect() async {
    databasePath = databasePath ?? await getPlatformSpecificDatabasePath();
    databasePath = join(databasePath!, databaseName);
    db = await openDatabase(databasePath!);
  }

  void define() {
    
  }
}
