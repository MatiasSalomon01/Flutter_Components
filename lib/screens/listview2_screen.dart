import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView2 Tipo 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  title: Text(options[i]),
                  trailing: const Icon(Icons.arrow_back_ios_rounded),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
