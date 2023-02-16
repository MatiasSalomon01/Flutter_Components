import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('dsfsdfdsfsdfds'),
            leading: Icon(
              Icons.ac_unit,
              color: AppTheme.primary,
            ),
            subtitle: Text('asdasdasdadsadsad\nasdasdasdasd'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text('Cancel')),
                TextButton(onPressed: () {}, child: Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
