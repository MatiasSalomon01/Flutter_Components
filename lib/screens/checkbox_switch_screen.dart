import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CheckboxSwitchScreen extends StatefulWidget {
  const CheckboxSwitchScreen({super.key});

  @override
  State<CheckboxSwitchScreen> createState() => _CheckboxSwitchScreenState();
}

class _CheckboxSwitchScreenState extends State<CheckboxSwitchScreen> {

  bool state2 = true;
  bool state1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox and Switch'),
      ),
      body: Center(
        child: Column(
          children: [
            CheckboxListTile(
              value: state1,
              activeColor: AppTheme.primary,
              title: const Text('CheckBox'),
              onChanged: (value) => setState(() {state1 = value ?? false;})
            ),
            SwitchListTile(
              value: state2,
              activeColor: AppTheme.primary,
              title: const Text('Slider'),
              onChanged: (value) => setState(() {state2 = value;})
            )
          ],
        ),
      ),
    );
  }
}