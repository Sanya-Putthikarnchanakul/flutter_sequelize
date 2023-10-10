import 'package:flutter/material.dart';
import 'package:flutter_sequelize/flutter_sequelize.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  Sequelize? sequelize;

  void initDB() async {
    var sequelize = Sequelize(
      databaseName: 'demo.db',
      databasePath: '/Users/11411360/Documents',
    );
    sequelize.connect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            ListTile(
              tileColor: Colors.blue,
              textColor: Colors.white,
              title: const Text('Init DB'),
              onTap: initDB,
            ),
          ],
        ),
      ),
    );
  }
}
