import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(
              children: const [
                ListTile(
                  title: Text('dsfsdfdsfsdfds'),
                  leading: Icon(
                    Icons.ac_unit,
                    color: AppTheme.primary,
                  ),
                  subtitle: Text('asdasdasdadsadsad\nasdasdasdasd'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
